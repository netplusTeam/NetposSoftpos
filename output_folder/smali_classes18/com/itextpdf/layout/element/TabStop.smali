.class public Lcom/itextpdf/layout/element/TabStop;
.super Ljava/lang/Object;
.source "TabStop.java"


# instance fields
.field private tabAlignment:Lcom/itextpdf/layout/property/TabAlignment;

.field private tabAnchor:Ljava/lang/Character;

.field private tabLeader:Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

.field private tabPosition:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "tabPosition"    # F

    .line 70
    sget-object v0, Lcom/itextpdf/layout/property/TabAlignment;->LEFT:Lcom/itextpdf/layout/property/TabAlignment;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/element/TabStop;-><init>(FLcom/itextpdf/layout/property/TabAlignment;)V

    .line 71
    return-void
.end method

.method public constructor <init>(FLcom/itextpdf/layout/property/TabAlignment;)V
    .locals 1
    .param p1, "tabPosition"    # F
    .param p2, "tabAlignment"    # Lcom/itextpdf/layout/property/TabAlignment;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/layout/element/TabStop;-><init>(FLcom/itextpdf/layout/property/TabAlignment;Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;)V

    .line 83
    return-void
.end method

.method public constructor <init>(FLcom/itextpdf/layout/property/TabAlignment;Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;)V
    .locals 1
    .param p1, "tabPosition"    # F
    .param p2, "tabAlignment"    # Lcom/itextpdf/layout/property/TabAlignment;
    .param p3, "tabLeader"    # Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/itextpdf/layout/element/TabStop;->tabPosition:F

    .line 98
    iput-object p2, p0, Lcom/itextpdf/layout/element/TabStop;->tabAlignment:Lcom/itextpdf/layout/property/TabAlignment;

    .line 99
    iput-object p3, p0, Lcom/itextpdf/layout/element/TabStop;->tabLeader:Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    .line 100
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/element/TabStop;->tabAnchor:Ljava/lang/Character;

    .line 101
    return-void
.end method


# virtual methods
.method public getTabAlignment()Lcom/itextpdf/layout/property/TabAlignment;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/itextpdf/layout/element/TabStop;->tabAlignment:Lcom/itextpdf/layout/property/TabAlignment;

    return-object v0
.end method

.method public getTabAnchor()Ljava/lang/Character;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/itextpdf/layout/element/TabStop;->tabAnchor:Ljava/lang/Character;

    return-object v0
.end method

.method public getTabLeader()Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/itextpdf/layout/element/TabStop;->tabLeader:Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    return-object v0
.end method

.method public getTabPosition()F
    .locals 1

    .line 104
    iget v0, p0, Lcom/itextpdf/layout/element/TabStop;->tabPosition:F

    return v0
.end method

.method public setTabAlignment(Lcom/itextpdf/layout/property/TabAlignment;)V
    .locals 0
    .param p1, "tabAlignment"    # Lcom/itextpdf/layout/property/TabAlignment;

    .line 112
    iput-object p1, p0, Lcom/itextpdf/layout/element/TabStop;->tabAlignment:Lcom/itextpdf/layout/property/TabAlignment;

    .line 113
    return-void
.end method

.method public setTabAnchor(Ljava/lang/Character;)V
    .locals 0
    .param p1, "tabAnchor"    # Ljava/lang/Character;

    .line 120
    iput-object p1, p0, Lcom/itextpdf/layout/element/TabStop;->tabAnchor:Ljava/lang/Character;

    .line 121
    return-void
.end method

.method public setTabLeader(Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;)V
    .locals 0
    .param p1, "tabLeader"    # Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    .line 128
    iput-object p1, p0, Lcom/itextpdf/layout/element/TabStop;->tabLeader:Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    .line 129
    return-void
.end method
