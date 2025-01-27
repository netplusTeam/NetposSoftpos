.class public Lcom/itextpdf/layout/layout/LayoutResult;
.super Ljava/lang/Object;
.source "LayoutResult.java"


# static fields
.field public static final FULL:I = 0x1

.field public static final NOTHING:I = 0x3

.field public static final PARTIAL:I = 0x2


# instance fields
.field protected areaBreak:Lcom/itextpdf/layout/element/AreaBreak;

.field protected causeOfNothing:Lcom/itextpdf/layout/renderer/IRenderer;

.field protected occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

.field protected overflowRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

.field protected splitRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

.field protected status:I


# direct methods
.method public constructor <init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "occupiedArea"    # Lcom/itextpdf/layout/layout/LayoutArea;
    .param p3, "splitRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p4, "overflowRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 108
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 109
    return-void
.end method

.method public constructor <init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "occupiedArea"    # Lcom/itextpdf/layout/layout/LayoutArea;
    .param p3, "splitRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p4, "overflowRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p5, "cause"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/itextpdf/layout/layout/LayoutResult;->status:I

    .line 123
    iput-object p2, p0, Lcom/itextpdf/layout/layout/LayoutResult;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 124
    iput-object p3, p0, Lcom/itextpdf/layout/layout/LayoutResult;->splitRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 125
    iput-object p4, p0, Lcom/itextpdf/layout/layout/LayoutResult;->overflowRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 126
    iput-object p5, p0, Lcom/itextpdf/layout/layout/LayoutResult;->causeOfNothing:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 127
    return-void
.end method


# virtual methods
.method public getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutResult;->areaBreak:Lcom/itextpdf/layout/element/AreaBreak;

    return-object v0
.end method

.method public getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutResult;->causeOfNothing:Lcom/itextpdf/layout/renderer/IRenderer;

    return-object v0
.end method

.method public getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutResult;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    return-object v0
.end method

.method public getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutResult;->overflowRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    return-object v0
.end method

.method public getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutResult;->splitRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/itextpdf/layout/layout/LayoutResult;->status:I

    return v0
.end method

.method public setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 0
    .param p1, "areaBreak"    # Lcom/itextpdf/layout/element/AreaBreak;

    .line 197
    iput-object p1, p0, Lcom/itextpdf/layout/layout/LayoutResult;->areaBreak:Lcom/itextpdf/layout/element/AreaBreak;

    .line 198
    return-object p0
.end method

.method public setOverflowRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 0
    .param p1, "overflowRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 189
    iput-object p1, p0, Lcom/itextpdf/layout/layout/LayoutResult;->overflowRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 190
    return-void
.end method

.method public setSplitRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 0
    .param p1, "splitRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 171
    iput-object p1, p0, Lcom/itextpdf/layout/layout/LayoutResult;->splitRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 172
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 144
    iput p1, p0, Lcom/itextpdf/layout/layout/LayoutResult;->status:I

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 227
    const-string v0, "None"

    .local v0, "status":Ljava/lang/String;
    goto :goto_0

    .line 221
    .end local v0    # "status":Ljava/lang/String;
    :pswitch_0
    const-string v0, "Nothing"

    .line 222
    .restart local v0    # "status":Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v0    # "status":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Partial"

    .line 225
    .restart local v0    # "status":Ljava/lang/String;
    goto :goto_0

    .line 218
    .end local v0    # "status":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Full"

    .line 219
    .restart local v0    # "status":Ljava/lang/String;
    nop

    .line 230
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutResult{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", areaBreak="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/layout/layout/LayoutResult;->areaBreak:Lcom/itextpdf/layout/element/AreaBreak;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", occupiedArea="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/layout/layout/LayoutResult;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
