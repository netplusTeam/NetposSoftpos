.class public Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;
.super Lcom/itextpdf/kernel/PdfException;
.source "InlineImageParsingUtils.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InlineImageParseException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33e7c47eb31af04L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method
