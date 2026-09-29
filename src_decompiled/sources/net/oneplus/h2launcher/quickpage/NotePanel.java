package net.oneplus.h2launcher.quickpage;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.TimePickerDialog;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CalendarContract;
import android.support.v4.app.ActivityCompat;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;
import java.util.Calendar;
import java.util.TimeZone;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.PermissionUtils;
import net.oneplus.h2launcher.util.TaskWorker;

/* loaded from: classes.dex */
public class NotePanel extends QuickPageItem {
    private final String LOG_TAG = NotePanel.class.getSimpleName();
    private NoteClickListener mClickListener;
    private boolean mContentScrolls;
    private Context mContext;
    private Dialog mDatePickerDialog;
    private Dialog mDialog;
    private final Button mDoneButton;
    private final EditText mEditText;
    private boolean mHasAddedReminder;
    private boolean mHasCalendarPermission;
    private int mMaxHeight;
    private RelativeLayout mNoteContainer;
    private TextView mNoteField;
    private ScrollView mNoteFieldContainer;
    private String mNoteText;
    private int mOriginalHeight;
    private RelativeLayout mParentView;
    private TextView mReminderButton;
    private final Button mReminderButtonInputField;
    private TextView mReminderIcon;
    private long mReminderId;
    private long mReminderTime;
    private int mSize;
    private Dialog mTimePickerDialog;
    private TextView mTimeStamp;
    private boolean mWaitingForPermission;

    /* loaded from: classes.dex */
    public interface NoteClickListener {
        void onNoteClick();
    }

    public NotePanel(Context context, String note, long reminderTime, long reminderId, long modified, int size, int id, boolean fromDb) {
        this.mReminderId = -1L;
        this.mContext = context;
        this.mId = id;
        this.mSize = size;
        this.mReminderId = reminderId;
        if (note != null) {
            this.mNoteText = note;
            if (reminderTime > 0) {
                this.mReminderTime = reminderTime;
                this.mHasAddedReminder = true;
            } else {
                this.mReminderTime = -1L;
                this.mHasAddedReminder = false;
            }
        } else {
            this.mNoteText = "";
            this.mReminderTime = -1L;
        }
        this.mParentView = (RelativeLayout) View.inflate(this.mContext, R.layout.note_panel_container, null);
        this.mNoteContainer = (RelativeLayout) this.mParentView.findViewById(R.id.note_container);
        this.mTimeStamp = (TextView) this.mNoteContainer.findViewById(R.id.note_timestamp);
        this.mTimeStamp.setText(getFormattedTime(modified));
        this.mReminderButton = (TextView) this.mNoteContainer.findViewById(R.id.set_reminder);
        this.mReminderButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                NotePanel.this.mHasCalendarPermission = PermissionUtils.hasGrantedPermission(NotePanel.this.mContext, "android.permission.WRITE_CALENDAR");
                if (NotePanel.this.mHasCalendarPermission) {
                    NotePanel.this.showDateSelectionDialog(false);
                } else {
                    PermissionUtils.requestPermission((QuickPageBaseActivity) NotePanel.this.mContext, "android.permission.WRITE_CALENDAR", 200);
                    NotePanel.this.mWaitingForPermission = true;
                }
            }
        });
        this.mReminderIcon = (TextView) this.mNoteContainer.findViewById(R.id.reminder_icon);
        this.mNoteFieldContainer = (ScrollView) this.mNoteContainer.findViewById(R.id.note_field_container);
        this.mNoteField = (TextView) this.mNoteFieldContainer.findViewById(R.id.note_field);
        this.mNoteField.setHint(R.string.note_panel_empty);
        LinearLayout mInputFieldLayout = (LinearLayout) View.inflate(this.mContext, R.layout.note_input, null);
        this.mReminderButtonInputField = (Button) mInputFieldLayout.findViewById(R.id.set_reminder);
        this.mEditText = (EditText) mInputFieldLayout.findViewById(R.id.note_content);
        this.mDoneButton = (Button) mInputFieldLayout.findViewById(R.id.done_button);
        this.mDialog = new Dialog(this.mContext, R.style.QuickPageDialogStyle);
        this.mDialog.requestWindowFeature(1);
        this.mDialog.setCancelable(true);
        this.mDialog.setContentView(mInputFieldLayout);
        this.mDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.2
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                Logger.d(NotePanel.this.LOG_TAG, "edit dialog canceled");
                if (!NotePanel.this.mHasAddedReminder && NotePanel.this.mReminderId >= 0) {
                    NotePanel.this.cancelReminder(NotePanel.this.mReminderId);
                    NotePanel.this.mHasAddedReminder = false;
                    NotePanel.this.updateReminderVisibility();
                }
            }
        });
        final QuickPageBaseActivity mQuickPage = (QuickPageBaseActivity) this.mContext;
        View.OnClickListener clickListener = new View.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                NotePanel.this.mDialog.show();
                NotePanel.this.mEditText.setText(NotePanel.this.mNoteField.getText());
                NotePanel.this.mEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.3.1
                    @Override // android.view.View.OnFocusChangeListener
                    public void onFocusChange(View v2, boolean hasFocus) {
                        if (hasFocus && NotePanel.this.mDialog.getWindow() != null) {
                            NotePanel.this.mDialog.getWindow().setSoftInputMode(5);
                        }
                    }
                });
                NotePanel.this.mEditText.requestFocus();
                NotePanel.this.mEditText.addTextChangedListener(new TextWatcher() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.3.2
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence s, int start, int before, int count) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable s) {
                        if (s.length() == 0) {
                            NotePanel.this.mReminderButtonInputField.setAlpha(0.5f);
                            NotePanel.this.mReminderButtonInputField.setEnabled(false);
                            NotePanel.this.mDoneButton.setText(R.string.action_cancel);
                        } else {
                            NotePanel.this.mReminderButtonInputField.setAlpha(1.0f);
                            NotePanel.this.mReminderButtonInputField.setEnabled(true);
                            NotePanel.this.mDoneButton.setText(R.string.action_done);
                        }
                    }
                });
                NotePanel.this.mDoneButton.setText(R.string.action_cancel);
                NotePanel.this.mDoneButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.3.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v2) {
                        if (NotePanel.this.mEditText.getText().length() != 0) {
                            long reminderTime2 = NotePanel.this.mReminderTime;
                            long reminderId2 = NotePanel.this.mReminderId;
                            NotePanel.this.mReminderTime = NotePanel.this.mReminderId = -1L;
                            mQuickPage.addNote(NotePanel.this.mEditText.getText().toString(), reminderTime2, reminderId2);
                        }
                        NotePanel.this.mEditText.setText("");
                        NotePanel.this.mDialog.dismiss();
                        NotePanel.this.mWaitingForPermission = false;
                    }
                });
                NotePanel.this.mReminderButtonInputField.setAlpha(0.5f);
                NotePanel.this.mReminderButtonInputField.setEnabled(false);
                NotePanel.this.mReminderButtonInputField.setAllCaps(true);
                NotePanel.this.mReminderButtonInputField.setText(R.string.note_panel_reminder);
                NotePanel.this.mReminderButtonInputField.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.3.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v2) {
                        NotePanel.this.mHasCalendarPermission = PermissionUtils.hasGrantedPermission(NotePanel.this.mContext, "android.permission.WRITE_CALENDAR");
                        if (NotePanel.this.mHasCalendarPermission) {
                            NotePanel.this.showDateSelectionDialog(true);
                        } else {
                            PermissionUtils.requestPermission((QuickPageBaseActivity) NotePanel.this.mContext, "android.permission.WRITE_CALENDAR", 200);
                            NotePanel.this.mWaitingForPermission = true;
                        }
                    }
                });
            }
        };
        this.mNoteContainer.setOnClickListener(clickListener);
        this.mNoteField.setOnClickListener(clickListener);
        this.mTimeStamp.setVisibility(8);
        this.mReminderButton.setVisibility(8);
        this.mReminderIcon.setVisibility(8);
        if (!this.mNoteText.isEmpty()) {
            this.mNoteField.setTextSize(2, this.mContext.getResources().getDimension(R.dimen.note_panel_text_size));
            this.mNoteField.setPadding(0, (int) this.mContext.getResources().getDimension(R.dimen.note_panel_note_content_margin_top), 0, 0);
            this.mNoteField.setCompoundDrawables(null, null, null, null);
            this.mNoteField.setOnClickListener(null);
            this.mNoteContainer.setOnClickListener(null);
            this.mTimeStamp.setVisibility(0);
            this.mReminderButton.setVisibility(0);
        }
        this.mNoteField.setText(this.mNoteText);
        this.mMaxHeight = this.mContext.getResources().getDimensionPixelSize(R.dimen.quick_page_item_max_size);
        this.mContentScrolls = this.mSize != -1;
        updateReminderVisibility();
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getViewType() {
        return 4;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getIndex() {
        return this.mId;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public String getTitle() {
        return this.mContext.getString(R.string.note_panel);
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public String getContent() {
        return this.mNoteText.isEmpty() ? "" : this.mNoteText;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getSize() {
        return this.mSize;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public boolean hasScrollableContent() {
        return this.mContentScrolls;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public boolean isEmpty() {
        return this.mNoteText.isEmpty();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public View getParent() {
        return this.mParentView;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public View getView() {
        return this.mNoteContainer;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public View getEmptyView() {
        return null;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getMinHeight() {
        return this.mContext.getResources().getDimensionPixelSize(R.dimen.note_panel_minimum_size);
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getMaxHeight() {
        return this.mOriginalHeight;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getStandardHeight(int height) {
        return height;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onItemViewAttached() {
        ViewGroup parent = (ViewGroup) this.mParentView.getParent();
        if (parent != null) {
            if (this.mSize != -1) {
                parent.getLayoutParams().height = this.mSize;
                parent.requestLayout();
            } else {
                parent.getLayoutParams().height = -2;
                parent.requestLayout();
            }
            verifyItemSize();
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onItemResizeProgress(int height) {
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onItemResizeFinished() {
        this.mSize = this.mParentView.getMeasuredHeight();
        verifyItemSize();
        notifyItemSizeChanged();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onUiComponentChanged() {
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onContainerVisibilityChanged(boolean visible) {
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onPermissionsChanged() {
        if (this.mHasCalendarPermission != PermissionUtils.hasGrantedPermission(this.mContext, "android.permission.WRITE_CALENDAR") && this.mWaitingForPermission) {
            showDateSelectionDialog(this.mDialog.isShowing() && isEmpty());
            this.mWaitingForPermission = false;
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onRemove() {
        Logger.d(this.LOG_TAG, "NotePanel removed, content:%s", this.mNoteText);
        if (this.mHasAddedReminder && this.mReminderId >= 0) {
            cancelReminder(this.mReminderId);
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onNewIntent() {
        if (this.mDialog != null && this.mDialog.isShowing()) {
            this.mDialog.dismiss();
            this.mWaitingForPermission = false;
        }
        if (this.mDatePickerDialog != null && this.mDatePickerDialog.isShowing()) {
            this.mDatePickerDialog.dismiss();
        }
        if (this.mTimePickerDialog != null && this.mTimePickerDialog.isShowing()) {
            this.mTimePickerDialog.dismiss();
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onResume() {
        InputMethodManager imm = (InputMethodManager) this.mContext.getSystemService("input_method");
        if (this.mDatePickerDialog != null && this.mDatePickerDialog.isShowing()) {
            imm.hideSoftInputFromWindow(this.mEditText.getWindowToken(), 0);
        }
        if (this.mTimePickerDialog != null && this.mTimePickerDialog.isShowing()) {
            imm.hideSoftInputFromWindow(this.mEditText.getWindowToken(), 0);
        }
    }

    private void verifyItemSize() {
        final ViewGroup parent = (ViewGroup) this.mParentView.getParent();
        parent.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.4
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (parent.getHeight() > NotePanel.this.mMaxHeight) {
                    parent.getLayoutParams().height = NotePanel.this.mMaxHeight;
                    parent.requestLayout();
                    NotePanel.this.mSize = NotePanel.this.mMaxHeight;
                    NotePanel.this.mContentScrolls = true;
                    NotePanel.this.notifyItemSizeChanged();
                }
                NotePanel.this.mOriginalHeight = (parent.getHeight() - NotePanel.this.mNoteFieldContainer.getHeight()) + NotePanel.this.mNoteField.getHeight();
                NotePanel.this.mOriginalHeight = Math.min(NotePanel.this.mOriginalHeight, NotePanel.this.mMaxHeight);
                parent.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateReminderVisibility() {
        if (this.mHasAddedReminder) {
            this.mReminderIcon.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.5
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    NotePanel.this.mHasCalendarPermission = PermissionUtils.hasGrantedPermission(NotePanel.this.mContext, "android.permission.WRITE_CALENDAR");
                    if (NotePanel.this.mHasCalendarPermission) {
                        NotePanel.this.showDateSelectionDialog(false);
                    } else {
                        PermissionUtils.requestPermission((QuickPageBaseActivity) NotePanel.this.mContext, "android.permission.WRITE_CALENDAR", 200);
                        NotePanel.this.mWaitingForPermission = true;
                    }
                }
            });
            this.mReminderButton.setVisibility(8);
            this.mReminderIcon.setVisibility(0);
            if (this.mReminderTime > 0) {
                String time = DateUtils.getRelativeTimeSpanString(this.mReminderTime, System.currentTimeMillis(), 0L, 524288).toString();
                this.mReminderIcon.setText(time);
                return;
            }
            return;
        }
        this.mReminderButton.setVisibility(this.mNoteText.isEmpty() ? 8 : 0);
        this.mReminderIcon.setVisibility(8);
        this.mReminderIcon.setText("");
    }

    private String getFormattedTime(long time) {
        return DateFormat.getMediumDateFormat(this.mContext).format(Long.valueOf(time));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDateSelectionDialog(final boolean isNewMemo) {
        final InputMethodManager imm = (InputMethodManager) this.mContext.getSystemService("input_method");
        imm.hideSoftInputFromWindow(this.mEditText.getWindowToken(), 0);
        final Calendar c = Calendar.getInstance();
        final DialogInterface.OnDismissListener listener = new DialogInterface.OnDismissListener() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.6
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialog) {
                NotePanel.this.updateReminderVisibility();
            }
        };
        final DialogInterface.OnCancelListener cancelListener = new DialogInterface.OnCancelListener() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.7
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                imm.showSoftInput(NotePanel.this.mEditText, 0);
            }
        };
        this.mDatePickerDialog = new DatePickerDialog(this.mContext, R.style.QuickPageNoteCalendarDialogStyle, new DatePickerDialog.OnDateSetListener() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.8
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public void onDateSet(DatePicker view, final int year, final int monthOfYear, final int dayOfMonth) {
                NotePanel.this.mTimePickerDialog = new TimePickerDialog(NotePanel.this.mContext, R.style.QuickPageNoteCalendarDialogStyle, new TimePickerDialog.OnTimeSetListener() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.8.1
                    @Override // android.app.TimePickerDialog.OnTimeSetListener
                    public void onTimeSet(TimePicker view2, int hourOfDay, int minute) {
                        c.set(year, monthOfYear, dayOfMonth, hourOfDay, minute);
                        NotePanel.this.mReminderButtonInputField.setEnabled(false);
                        if (!isNewMemo && NotePanel.this.mReminderId >= 0) {
                            NotePanel.this.cancelReminder(NotePanel.this.mReminderId);
                        }
                        NotePanel.this.addReminder(c, isNewMemo);
                        imm.showSoftInput(NotePanel.this.mEditText, 0);
                    }
                }, c.get(11), c.get(12), DateFormat.is24HourFormat(NotePanel.this.mContext));
                NotePanel.this.mTimePickerDialog.setOnCancelListener(cancelListener);
                NotePanel.this.mTimePickerDialog.setOnDismissListener(listener);
                NotePanel.this.mTimePickerDialog.show();
            }
        }, c.get(1), c.get(2), c.get(5));
        this.mDatePickerDialog.setOnCancelListener(cancelListener);
        this.mDatePickerDialog.setOnDismissListener(listener);
        this.mDatePickerDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addReminder(final Calendar calendar, final boolean isNewMemo) {
        final String title = isNewMemo ? this.mEditText.getText().toString() : this.mNoteText;
        this.mReminderTime = calendar.getTimeInMillis();
        TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.9
            @Override // java.lang.Runnable
            public void run() {
                if (ActivityCompat.checkSelfPermission(NotePanel.this.mContext, "android.permission.WRITE_CALENDAR") != 0) {
                    NotePanel.this.mHasAddedReminder = false;
                    Logger.w(NotePanel.this.LOG_TAG, "Calendar permission not granted for adding Calendar event");
                    return;
                }
                String[] calendarsProjection = {GlobalSearchDbHelper.COLUMN_ID, "calendar_access_level"};
                Cursor managedCursor = NotePanel.this.mContext.getContentResolver().query(CalendarContract.Calendars.CONTENT_URI, calendarsProjection, "calendar_access_level=700", null, null);
                if (managedCursor != null && managedCursor.moveToFirst()) {
                    int idIndex = managedCursor.getColumnIndexOrThrow(GlobalSearchDbHelper.COLUMN_ID);
                    int calendarId = managedCursor.getInt(idIndex);
                    managedCursor.close();
                    ContentResolver cr = NotePanel.this.mContext.getContentResolver();
                    ContentValues values = new ContentValues();
                    values.put("dtstart", Long.valueOf(calendar.getTimeInMillis()));
                    values.put("dtend", Long.valueOf(calendar.getTimeInMillis() + 60000));
                    values.put("title", title);
                    values.put("calendar_id", Integer.valueOf(calendarId));
                    values.put("eventTimezone", TimeZone.getDefault().getID());
                    values.put("hasAlarm", (Integer) 1);
                    Uri event = cr.insert(CalendarContract.Events.CONTENT_URI, values);
                    if (event != null) {
                        NotePanel.this.mReminderId = Long.parseLong(event.getLastPathSegment());
                        ContentValues values2 = new ContentValues();
                        values2.put("event_id", Long.valueOf(NotePanel.this.mReminderId));
                        values2.put("method", (Integer) 1);
                        values2.put("minutes", (Integer) 0);
                        final Uri result = cr.insert(CalendarContract.Reminders.CONTENT_URI, values2);
                        TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.9.3
                            @Override // java.lang.Runnable
                            public void run() {
                                if (result == null) {
                                    Toast.makeText(NotePanel.this.mContext, R.string.no_data, 0).show();
                                    NotePanel.this.mHasAddedReminder = false;
                                    return;
                                }
                                Toast.makeText(NotePanel.this.mContext, R.string.note_panel_reminder_set, 0).show();
                                if (!isNewMemo) {
                                    NotePanel.this.mHasAddedReminder = true;
                                    NotePanel.this.updateReminderVisibility();
                                    NotePanel.this.notifyItemContentChanged();
                                } else {
                                    String time = DateUtils.getRelativeTimeSpanString(NotePanel.this.mReminderTime, System.currentTimeMillis(), 0L, 524288).toString();
                                    NotePanel.this.mReminderButtonInputField.setAllCaps(false);
                                    NotePanel.this.mReminderButtonInputField.setText(time);
                                }
                            }
                        });
                        if (!isNewMemo) {
                            LauncherModel.addNoteReminder(NotePanel.this.mContext, NotePanel.this.mId, NotePanel.this.mReminderTime, NotePanel.this.mReminderId);
                            return;
                        }
                        return;
                    }
                    TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.9.2
                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(NotePanel.this.mContext, R.string.no_data, 0).show();
                        }
                    });
                    NotePanel.this.mHasAddedReminder = false;
                    return;
                }
                TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(NotePanel.this.mContext, R.string.note_panel_reminder_no_calendar, 0).show();
                    }
                });
                NotePanel.this.mHasAddedReminder = false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelReminder(final long eventId) {
        TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.NotePanel.10
            @Override // java.lang.Runnable
            public void run() {
                if (ActivityCompat.checkSelfPermission(NotePanel.this.mContext, "android.permission.WRITE_CALENDAR") != 0) {
                    NotePanel.this.mHasAddedReminder = false;
                    Logger.w(NotePanel.this.LOG_TAG, "Permission not granted for removing Calendar event");
                    return;
                }
                ContentResolver cr = NotePanel.this.mContext.getContentResolver();
                Uri deleteUri = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, eventId);
                if (deleteUri != null) {
                    int result = cr.delete(deleteUri, null, null);
                    Logger.d(NotePanel.this.LOG_TAG, "cancel reminder id:%d result:%d", Long.valueOf(eventId), Integer.valueOf(result));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getReminderTime() {
        return this.mReminderTime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getReminderId() {
        return this.mReminderId;
    }
}
