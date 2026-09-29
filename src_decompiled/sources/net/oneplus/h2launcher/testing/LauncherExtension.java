package net.oneplus.h2launcher.testing;

import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherCallbacks;
import net.oneplus.h2launcher.allapps.AllAppsSearchBarController;
import net.oneplus.h2launcher.util.ComponentKey;

/* loaded from: classes.dex */
public class LauncherExtension extends Launcher {
    @Override // net.oneplus.h2launcher.Launcher, net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        setLauncherCallbacks(new LauncherExtensionCallbacks());
        super.onCreate(savedInstanceState);
    }

    /* loaded from: classes.dex */
    public class LauncherExtensionCallbacks implements LauncherCallbacks {
        public LauncherExtensionCallbacks() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void preOnCreate() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onCreate(Bundle savedInstanceState) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void preOnResume() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onResume() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onStart() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onStop() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onPause() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onDestroy() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onSaveInstanceState(Bundle outState) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onPostCreate(Bundle savedInstanceState) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onNewIntent(Intent intent) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onActivityResult(int requestCode, int resultCode, Intent data) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onWindowFocusChanged(boolean hasFocus) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public boolean onPrepareOptionsMenu(Menu menu) {
            return false;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void dump(String prefix, FileDescriptor fd, PrintWriter w, String[] args) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onHomeIntent() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public boolean handleBackPressed() {
            return false;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onTrimMemory(int level) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onLauncherProviderChange() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void finishBindingItems(boolean upgradePath) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onClickAllAppsButton(View v) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void bindAllApplications(ArrayList<AppInfo> apps) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onClickFolderIcon(View v) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onClickAppShortcut(View v) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onClickPagedViewIcon(View v) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onClickWallpaperPicker(View v) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onClickCustomizationButton(View v) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onClickSettingsButton(View v) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onClickAddWidgetButton(View v) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onPageSwitch(View newPage, int newPageIndex) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onWorkspaceLockedChanged() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onDragStarted(View view) {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onInteractionBegin() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void onInteractionEnd() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public boolean providesSearch() {
            return false;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public boolean startSearch(String initialQuery, boolean selectInitialQuery, Bundle appSearchData, Rect sourceBounds) {
            return false;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public boolean startSearchFromAllApps(String query) {
            return false;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public boolean hasCustomContentToLeft() {
            return false;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void populateCustomContentContainer() {
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public View getQsbBar() {
            return null;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public Intent getFirstRunActivity() {
            return null;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public boolean hasFirstRunActivity() {
            return false;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public boolean hasDismissableIntroScreen() {
            return false;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public View getIntroScreen() {
            return null;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public boolean shouldMoveToDefaultScreenOnHomeIntent() {
            return true;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public boolean hasSettings() {
            return false;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public boolean overrideWallpaperDimensions() {
            return false;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public AllAppsSearchBarController getAllAppsSearchBarController() {
            return null;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public List<ComponentKey> getPredictedApps() {
            return new ArrayList();
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public boolean isLauncherPreinstalled() {
            return false;
        }

        @Override // net.oneplus.h2launcher.LauncherCallbacks
        public void setLauncherSearchCallback(Object callbacks) {
        }
    }
}
