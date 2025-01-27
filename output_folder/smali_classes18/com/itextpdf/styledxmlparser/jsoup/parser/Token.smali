.class abstract Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EOF;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;
    }
.end annotation


# instance fields
.field type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$1;

    .line 53
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;-><init>()V

    return-void
.end method

.method static reset(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 70
    if-eqz p0, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method final asCharacter()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;
    .locals 1

    .line 377
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    return-object v0
.end method

.method final asComment()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;
    .locals 1

    .line 369
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    return-object v0
.end method

.method final asDoctype()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;
    .locals 1

    .line 345
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

    return-object v0
.end method

.method final asEndTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;
    .locals 1

    .line 361
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    return-object v0
.end method

.method final asStartTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;
    .locals 1

    .line 353
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    return-object v0
.end method

.method final isCharacter()Z
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->Character:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isComment()Z
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->Comment:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isDoctype()Z
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->Doctype:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isEOF()Z
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->EOF:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isEndTag()Z
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->EndTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isStartTag()Z
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->StartTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.end method

.method tokenType()Ljava/lang/String;
    .locals 1

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
