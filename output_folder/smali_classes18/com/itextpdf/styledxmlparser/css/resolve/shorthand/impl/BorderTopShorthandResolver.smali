.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderTopShorthandResolver;
.super Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;
.source "BorderTopShorthandResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPrefix()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "border-top"

    return-object v0
.end method
