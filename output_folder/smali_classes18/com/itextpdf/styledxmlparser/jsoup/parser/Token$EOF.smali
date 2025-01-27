.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EOF;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EOF"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$1;)V

    .line 331
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->EOF:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EOF;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    .line 332
    return-void
.end method


# virtual methods
.method reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .locals 0

    .line 336
    return-object p0
.end method
