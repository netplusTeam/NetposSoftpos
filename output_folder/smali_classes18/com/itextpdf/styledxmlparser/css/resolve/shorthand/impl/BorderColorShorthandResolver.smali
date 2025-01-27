.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderColorShorthandResolver;
.super Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;
.source "BorderColorShorthandResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPostfix()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "-color"

    return-object v0
.end method

.method protected getPrefix()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "border"

    return-object v0
.end method
