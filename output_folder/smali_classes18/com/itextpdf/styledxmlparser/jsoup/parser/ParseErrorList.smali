.class Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;
.super Ljava/util/ArrayList;
.source "ParseErrorList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private final maxSize:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "maxSize"    # I

    .line 57
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    iput p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->maxSize:I

    .line 59
    return-void
.end method

.method static noTracking()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;
    .locals 2

    .line 70
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;-><init>(II)V

    return-object v0
.end method

.method static tracking(I)Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;
    .locals 2
    .param p0, "maxSize"    # I

    .line 74
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method canAddError()Z
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->size()I

    move-result v0

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->maxSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getMaxSize()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->maxSize:I

    return v0
.end method
