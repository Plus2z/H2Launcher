package net.oneplus.h2launcher;

import net.oneplus.h2launcher.Workspace;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WorkspaceStateTransitionAnimation.java */
/* loaded from: classes.dex */
public class TransitionStates {
    final boolean allAppsToWorkspace;
    final boolean customizationToShrunkenAllApps;
    final boolean oldStateIsCustomization;
    final boolean oldStateIsIconRearrangement;
    final boolean oldStateIsNormal;
    final boolean oldStateIsNormalHidden;
    final boolean oldStateIsOverview;
    final boolean oldStateIsOverviewHidden;
    final boolean oldStateIsSpringLoaded;
    final boolean oldStateIsWallpapers;
    final boolean overviewToAllApps;
    final boolean overviewToCustomization;
    final boolean overviewToWallpapers;
    final boolean overviewToWorkspace;
    final boolean stateIsCustomizations;
    final boolean stateIsIconRearrangement;
    final boolean stateIsNormal;
    final boolean stateIsNormalHidden;
    final boolean stateIsOverview;
    final boolean stateIsOverviewHidden;
    final boolean stateIsShrunkenAllApps;
    final boolean stateIsSpringLoaded;
    final boolean stateIsWallpapers;
    final boolean workspaceToAllApps;
    final boolean workspaceToOverview;

    public TransitionStates(Workspace.State fromState, Workspace.State toState) {
        this.oldStateIsNormal = fromState == Workspace.State.NORMAL;
        this.oldStateIsSpringLoaded = fromState == Workspace.State.SPRING_LOADED;
        this.oldStateIsNormalHidden = fromState == Workspace.State.NORMAL_HIDDEN;
        this.oldStateIsOverviewHidden = fromState == Workspace.State.OVERVIEW_HIDDEN;
        this.oldStateIsOverview = fromState == Workspace.State.OVERVIEW;
        this.oldStateIsCustomization = fromState == Workspace.State.CUSTOMIZATIONS;
        this.oldStateIsWallpapers = fromState == Workspace.State.WALLPAPERS;
        this.oldStateIsIconRearrangement = fromState == Workspace.State.ICON_REARRANGEMENT;
        this.stateIsNormal = toState == Workspace.State.NORMAL;
        this.stateIsSpringLoaded = toState == Workspace.State.SPRING_LOADED;
        this.stateIsNormalHidden = toState == Workspace.State.NORMAL_HIDDEN;
        this.stateIsOverviewHidden = toState == Workspace.State.OVERVIEW_HIDDEN;
        this.stateIsOverview = toState == Workspace.State.OVERVIEW;
        this.stateIsCustomizations = toState == Workspace.State.CUSTOMIZATIONS;
        this.stateIsShrunkenAllApps = toState == Workspace.State.SHRUNKEN_ALL_APPS;
        this.stateIsWallpapers = toState == Workspace.State.WALLPAPERS;
        this.stateIsIconRearrangement = toState == Workspace.State.ICON_REARRANGEMENT;
        this.workspaceToOverview = this.oldStateIsNormal && this.stateIsOverview;
        this.workspaceToAllApps = this.oldStateIsNormal && this.stateIsNormalHidden;
        this.overviewToWorkspace = this.oldStateIsOverview && this.stateIsNormal;
        this.overviewToAllApps = this.oldStateIsOverview && this.stateIsOverviewHidden;
        this.overviewToCustomization = this.oldStateIsOverview && this.stateIsCustomizations;
        this.allAppsToWorkspace = this.stateIsNormalHidden && this.stateIsNormal;
        this.customizationToShrunkenAllApps = this.oldStateIsCustomization && this.stateIsShrunkenAllApps;
        this.overviewToWallpapers = this.oldStateIsWallpapers && this.stateIsWallpapers;
    }
}
