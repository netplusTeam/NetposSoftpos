.class Lcom/itextpdf/io/font/OpenTypeParser$PostTable;
.super Ljava/lang/Object;
.source "OpenTypeParser.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/OpenTypeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PostTable"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f99381f7eed1a2aL


# instance fields
.field isFixedPitch:Z

.field italicAngle:F

.field underlinePosition:I

.field underlineThickness:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
