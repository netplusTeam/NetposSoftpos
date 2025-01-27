.class public Lorg/jline/reader/impl/LineReaderImpl$PostResult;
.super Ljava/lang/Object;
.source "LineReaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/LineReaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PostResult"
.end annotation


# instance fields
.field final lines:I

.field final post:Lorg/jline/utils/AttributedString;

.field final selectedLine:I


# direct methods
.method public constructor <init>(Lorg/jline/utils/AttributedString;II)V
    .locals 0
    .param p1, "post"    # Lorg/jline/utils/AttributedString;
    .param p2, "lines"    # I
    .param p3, "selectedLine"    # I

    .line 5091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5092
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->post:Lorg/jline/utils/AttributedString;

    .line 5093
    iput p2, p0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->lines:I

    .line 5094
    iput p3, p0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->selectedLine:I

    .line 5095
    return-void
.end method
