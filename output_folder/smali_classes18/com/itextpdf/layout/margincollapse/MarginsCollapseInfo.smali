.class public Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
.super Ljava/lang/Object;
.source "MarginsCollapseInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bufferSpaceOnBottom:F

.field private bufferSpaceOnTop:F

.field private clearanceApplied:Z

.field private collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

.field private collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

.field private ignoreOwnMarginBottom:Z

.field private ignoreOwnMarginTop:Z

.field private isSelfCollapsing:Z

.field private ownCollapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

.field private usedBufferSpaceOnBottom:F

.field private usedBufferSpaceOnTop:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    .line 68
    iput-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    .line 69
    new-instance v1, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 70
    new-instance v1, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing:Z

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnTop:F

    .line 73
    iput v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnBottom:F

    .line 74
    iput v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnTop:F

    .line 75
    iput v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnBottom:F

    .line 76
    iput-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->clearanceApplied:Z

    .line 77
    return-void
.end method

.method constructor <init>(ZZLcom/itextpdf/layout/margincollapse/MarginsCollapse;Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V
    .locals 1
    .param p1, "ignoreOwnMarginTop"    # Z
    .param p2, "ignoreOwnMarginBottom"    # Z
    .param p3, "collapseBefore"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    .param p4, "collapseAfter"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    .line 81
    iput-boolean p2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    .line 82
    iput-object p3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 83
    iput-object p4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing:Z

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnTop:F

    .line 86
    iput v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnBottom:F

    .line 87
    iput v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnTop:F

    .line 88
    iput v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnBottom:F

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->clearanceApplied:Z

    .line 90
    return-void
.end method

.method public static createDeepCopy(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .locals 2
    .param p0, "instance"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 109
    new-instance v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-direct {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;-><init>()V

    .line 110
    .local v0, "copy":Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->copyTo(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    .line 112
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->clone()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 113
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->clone()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 114
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ownCollapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->clone()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setOwnCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 118
    :cond_0
    return-object v0
.end method

.method public static updateFromCopy(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V
    .locals 2
    .param p0, "originalInstance"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .param p1, "processedCopy"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 122
    iget-boolean v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    iput-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    .line 123
    iget-boolean v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    iput-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    .line 125
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    iget-object v1, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 126
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    iget-object v1, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 128
    invoke-virtual {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setOwnCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 134
    :cond_1
    iget-boolean v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing:Z

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setSelfCollapsing(Z)V

    .line 135
    iget v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnTop:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 136
    iget v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnBottom:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    .line 137
    iget v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnTop:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnTop(F)V

    .line 138
    iget v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnBottom:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnBottom(F)V

    .line 140
    iget-boolean v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->clearanceApplied:Z

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setClearanceApplied(Z)V

    .line 141
    return-void
.end method


# virtual methods
.method public copyTo(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V
    .locals 1
    .param p1, "destInfo"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 93
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    iput-boolean v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    .line 94
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    iput-boolean v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    .line 95
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    iput-object v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 96
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    iput-object v0, p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 98
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ownCollapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setOwnCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 99
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing:Z

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setSelfCollapsing(Z)V

    .line 100
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnTop:F

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 101
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnBottom:F

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    .line 102
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnTop:F

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnTop(F)V

    .line 103
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnBottom:F

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnBottom(F)V

    .line 105
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->clearanceApplied:Z

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setClearanceApplied(Z)V

    .line 106
    return-void
.end method

.method getBufferSpaceOnBottom()F
    .locals 1

    .line 184
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnBottom:F

    return v0
.end method

.method getBufferSpaceOnTop()F
    .locals 1

    .line 176
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnTop:F

    return v0
.end method

.method getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    return-object v0
.end method

.method getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseBefore:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    return-object v0
.end method

.method getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ownCollapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    return-object v0
.end method

.method getUsedBufferSpaceOnBottom()F
    .locals 1

    .line 200
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnBottom:F

    return v0
.end method

.method getUsedBufferSpaceOnTop()F
    .locals 1

    .line 192
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnTop:F

    return v0
.end method

.method isClearanceApplied()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->clearanceApplied:Z

    return v0
.end method

.method isIgnoreOwnMarginBottom()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginBottom:Z

    return v0
.end method

.method isIgnoreOwnMarginTop()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ignoreOwnMarginTop:Z

    return v0
.end method

.method isSelfCollapsing()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing:Z

    return v0
.end method

.method setBufferSpaceOnBottom(F)V
    .locals 0
    .param p1, "bufferSpaceOnBottom"    # F

    .line 188
    iput p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnBottom:F

    .line 189
    return-void
.end method

.method setBufferSpaceOnTop(F)V
    .locals 0
    .param p1, "bufferSpaceOnTop"    # F

    .line 180
    iput p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->bufferSpaceOnTop:F

    .line 181
    return-void
.end method

.method setClearanceApplied(Z)V
    .locals 0
    .param p1, "clearanceApplied"    # Z

    .line 212
    iput-boolean p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->clearanceApplied:Z

    .line 213
    return-void
.end method

.method setCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V
    .locals 0
    .param p1, "collapseAfter"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 150
    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->collapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 151
    return-void
.end method

.method setOwnCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V
    .locals 0
    .param p1, "marginsCollapse"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 156
    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->ownCollapseAfter:Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    .line 157
    return-void
.end method

.method setSelfCollapsing(Z)V
    .locals 0
    .param p1, "selfCollapsing"    # Z

    .line 160
    iput-boolean p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing:Z

    .line 161
    return-void
.end method

.method setUsedBufferSpaceOnBottom(F)V
    .locals 0
    .param p1, "usedBufferSpaceOnBottom"    # F

    .line 204
    iput p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnBottom:F

    .line 205
    return-void
.end method

.method setUsedBufferSpaceOnTop(F)V
    .locals 0
    .param p1, "usedBufferSpaceOnTop"    # F

    .line 196
    iput p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->usedBufferSpaceOnTop:F

    .line 197
    return-void
.end method
