.class public Lcom/itextpdf/io/font/otf/GposAnchor;
.super Ljava/lang/Object;
.source "GposAnchor.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x63479c54ddae26ceL


# instance fields
.field public XCoordinate:I

.field public YCoordinate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/font/otf/GposAnchor;)V
    .locals 1
    .param p1, "other"    # Lcom/itextpdf/io/font/otf/GposAnchor;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget v0, p1, Lcom/itextpdf/io/font/otf/GposAnchor;->XCoordinate:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/GposAnchor;->XCoordinate:I

    .line 58
    iget v0, p1, Lcom/itextpdf/io/font/otf/GposAnchor;->YCoordinate:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/GposAnchor;->YCoordinate:I

    .line 59
    return-void
.end method
