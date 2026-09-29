.class Lnet/oneplus/h2launcher/TransitionStates;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"


# instance fields
.field final allAppsToWorkspace:Z

.field final customizationToShrunkenAllApps:Z

.field final oldStateIsCustomization:Z

.field final oldStateIsIconRearrangement:Z

.field final oldStateIsNormal:Z

.field final oldStateIsNormalHidden:Z

.field final oldStateIsOverview:Z

.field final oldStateIsOverviewHidden:Z

.field final oldStateIsSpringLoaded:Z

.field final oldStateIsWallpapers:Z

.field final overviewToAllApps:Z

.field final overviewToCustomization:Z

.field final overviewToWallpapers:Z

.field final overviewToWorkspace:Z

.field final stateIsCustomizations:Z

.field final stateIsIconRearrangement:Z

.field final stateIsNormal:Z

.field final stateIsNormalHidden:Z

.field final stateIsOverview:Z

.field final stateIsOverviewHidden:Z

.field final stateIsShrunkenAllApps:Z

.field final stateIsSpringLoaded:Z

.field final stateIsWallpapers:Z

.field final workspaceToAllApps:Z

.field final workspaceToOverview:Z


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Workspace$State;Lnet/oneplus/h2launcher/Workspace$State;)V
    .locals 3
    .param p1, "fromState"    # Lnet/oneplus/h2launcher/Workspace$State;
    .param p2, "toState"    # Lnet/oneplus/h2launcher/Workspace$State;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsNormal:Z

    .line 121
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->SPRING_LOADED:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsSpringLoaded:Z

    .line 122
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsNormalHidden:Z

    .line 123
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsOverviewHidden:Z

    .line 124
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p1, v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsOverview:Z

    .line 125
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p1, v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsCustomization:Z

    .line 126
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->WALLPAPERS:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p1, v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsWallpapers:Z

    .line 127
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p1, v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsIconRearrangement:Z

    .line 129
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p2, v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormal:Z

    .line 130
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->SPRING_LOADED:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p2, v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsSpringLoaded:Z

    .line 131
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p2, v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormalHidden:Z

    .line 132
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p2, v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverviewHidden:Z

    .line 133
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p2, v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverview:Z

    .line 134
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p2, v0, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsCustomizations:Z

    .line 135
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->SHRUNKEN_ALL_APPS:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p2, v0, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsShrunkenAllApps:Z

    .line 136
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->WALLPAPERS:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p2, v0, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsWallpapers:Z

    .line 137
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Workspace$State;

    if-ne p2, v0, :cond_10

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsIconRearrangement:Z

    .line 139
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsNormal:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverview:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->workspaceToOverview:Z

    .line 140
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsNormal:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormalHidden:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->workspaceToAllApps:Z

    .line 141
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsOverview:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormal:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->overviewToWorkspace:Z

    .line 142
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsOverview:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsOverviewHidden:Z

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->overviewToAllApps:Z

    .line 143
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsOverview:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsCustomizations:Z

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->overviewToCustomization:Z

    .line 144
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormalHidden:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsNormal:Z

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->allAppsToWorkspace:Z

    .line 145
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsCustomization:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsShrunkenAllApps:Z

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->customizationToShrunkenAllApps:Z

    .line 146
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->oldStateIsWallpapers:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/TransitionStates;->stateIsWallpapers:Z

    if-eqz v0, :cond_18

    :goto_18
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/TransitionStates;->overviewToWallpapers:Z

    .line 147
    return-void

    :cond_0
    move v0, v2

    .line 120
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 121
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 122
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 123
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 124
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 125
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 126
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 127
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 129
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 130
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 131
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 132
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 133
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 134
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 135
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 136
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 137
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 139
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 140
    goto :goto_12

    :cond_13
    move v0, v2

    .line 141
    goto :goto_13

    :cond_14
    move v0, v2

    .line 142
    goto :goto_14

    :cond_15
    move v0, v2

    .line 143
    goto :goto_15

    :cond_16
    move v0, v2

    .line 144
    goto :goto_16

    :cond_17
    move v0, v2

    .line 145
    goto :goto_17

    :cond_18
    move v1, v2

    .line 146
    goto :goto_18
.end method
