.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssQuotesValidator;
.super Ljava/lang/Object;
.source "CssQuotesValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "objectString"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->createQuotes(Ljava/lang/String;Z)Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;

    move-result-object v1

    .line 60
    .local v1, "quotes":Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
