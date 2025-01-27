.class Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
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
    name = "HeaderTable"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x512f0bc9928a67c7L


# instance fields
.field flags:I

.field macStyle:I

.field unitsPerEm:I

.field xMax:S

.field xMin:S

.field yMax:S

.field yMin:S


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
