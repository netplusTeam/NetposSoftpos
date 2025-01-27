.class public Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
.super Ljava/lang/Object;
.source "CssDeclarationValueTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field private type:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->value:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->type:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    .line 230
    return-void
.end method


# virtual methods
.method public getType()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->type:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isString()Z
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->type:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    sget-object v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->STRING:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->value:Ljava/lang/String;

    return-object v0
.end method
