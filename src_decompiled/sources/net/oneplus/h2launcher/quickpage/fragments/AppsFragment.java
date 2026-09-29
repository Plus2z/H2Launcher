package net.oneplus.h2launcher.quickpage.fragments;

import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.quickpage.view.util.ViewGroupUtils;

/* loaded from: classes.dex */
public class AppsFragment extends Fragment {
    private static final String NUMBER_SYMBOL = "#";
    private ListView mAppList;
    private Map<String, Integer> mMapIndex;
    private int mTextColor;

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mTextColor = getActivity().getApplicationContext().getResources().getColor(R.color.navigation_drawer_app_list_label_color);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.drawer_app_list, container, false);
        final LinearLayout indexLayout = (LinearLayout) root.findViewById(R.id.side_index);
        final PackageManager pm = getActivity().getApplicationContext().getPackageManager();
        Intent mainIntent = new Intent("android.intent.action.MAIN", (Uri) null);
        mainIntent.addCategory("android.intent.category.LAUNCHER");
        List<ResolveInfo> allApps = pm.queryIntentActivities(mainIntent, 0);
        Collections.sort(allApps, new ResolveInfoComparator(pm));
        ArrayList<String> appList = new ArrayList<>();
        for (ResolveInfo info : allApps) {
            appList.add(info.loadLabel(pm).toString());
        }
        String[] appLabels = (String[]) appList.toArray(new String[appList.size()]);
        this.mAppList = (ListView) root.findViewById(R.id.app_list);
        final AppListAdapter adapter = new AppListAdapter(getActivity(), allApps);
        this.mAppList.setAdapter((ListAdapter) adapter);
        this.mAppList.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: net.oneplus.h2launcher.quickpage.fragments.AppsFragment.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView view, int scrollState) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
                String index = adapter.getItem(firstVisibleItem).loadLabel(pm).subSequence(0, 1).toString();
                AppsFragment.this.highlightSelectedIndex(indexLayout, index);
            }
        });
        getIndexList(appLabels);
        displayIndex(inflater, indexLayout);
        return root;
    }

    private void getIndexList(String[] apps) {
        this.mMapIndex = new LinkedHashMap();
        for (int i = 0; i < apps.length; i++) {
            String app = apps[i];
            String index = String.valueOf(app.charAt(0));
            if (!Character.isLetter(app.charAt(0))) {
                index = NUMBER_SYMBOL;
            }
            if (this.mMapIndex.get(index) == null) {
                this.mMapIndex.put(index, Integer.valueOf(i));
            }
        }
    }

    private void displayIndex(LayoutInflater inflater, final LinearLayout root) {
        root.setOnTouchListener(new View.OnTouchListener() { // from class: net.oneplus.h2launcher.quickpage.fragments.AppsFragment.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                int action = event.getAction();
                if (action == 0 || action == 2) {
                    View selectedIndex = ViewGroupUtils.findViewAtPosition(v, (int) event.getRawX(), (int) event.getRawY());
                    if (selectedIndex instanceof TextView) {
                        TextView textView = (TextView) selectedIndex;
                        AppsFragment.this.highlightSelectedIndex(root, textView.getText().toString());
                        AppsFragment.this.mAppList.setSelection(((Integer) AppsFragment.this.mMapIndex.get(textView.getText())).intValue());
                        return true;
                    }
                    return true;
                }
                return true;
            }
        });
        List<String> indexList = new ArrayList<>(this.mMapIndex.keySet());
        for (String index : indexList) {
            TextView textView = (TextView) inflater.inflate(R.layout.drawer_app_list_index_item, (ViewGroup) null);
            textView.setText(index);
            root.addView(textView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void highlightSelectedIndex(ViewGroup root, String index) {
        boolean isLetter = Character.isLetter(index.charAt(0));
        for (int i = 0; i < root.getChildCount(); i++) {
            if (root.getChildAt(i) instanceof TextView) {
                TextView child = (TextView) root.getChildAt(i);
                if (index.equals(child.getText()) || (NUMBER_SYMBOL.equals(child.getText()) && !isLetter)) {
                    child.setTextColor(-1);
                } else {
                    child.setTextColor(this.mTextColor);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class AppListAdapter extends ArrayAdapter<ResolveInfo> {
        private LayoutInflater inflater;
        private PackageManager packageManager;

        public AppListAdapter(Context context, List<ResolveInfo> values) {
            super(context, R.layout.drawer_app_list_item, values);
            this.packageManager = context.getApplicationContext().getPackageManager();
            this.inflater = (LayoutInflater) context.getApplicationContext().getSystemService("layout_inflater");
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            ViewHolder holder;
            if (convertView == null) {
                convertView = this.inflater.inflate(R.layout.drawer_app_list_item, parent, false);
                holder = new ViewHolder();
                holder.label = (TextView) convertView.findViewById(R.id.label);
                holder.icon = (ImageView) convertView.findViewById(R.id.icon);
                convertView.setTag(holder);
            } else {
                holder = (ViewHolder) convertView.getTag();
            }
            ResolveInfo resolveInfo = getItem(position);
            holder.label.setText(resolveInfo.loadLabel(this.packageManager));
            holder.icon.setImageDrawable(resolveInfo.loadIcon(this.packageManager));
            return convertView;
        }
    }

    /* loaded from: classes.dex */
    static class ViewHolder {
        ImageView icon;
        TextView label;

        ViewHolder() {
        }
    }

    /* loaded from: classes.dex */
    private class ResolveInfoComparator implements Comparator<ResolveInfo> {
        final PackageManager packageManager;

        public ResolveInfoComparator(PackageManager packageManager) {
            this.packageManager = packageManager;
        }

        @Override // java.util.Comparator
        public int compare(ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
            String appLabel = resolveInfo.loadLabel(this.packageManager).toString();
            String appLabel2 = resolveInfo2.loadLabel(this.packageManager).toString();
            return appLabel.compareTo(appLabel2);
        }
    }
}
