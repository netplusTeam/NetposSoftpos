.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/PaddingShorthandResolver;
.super Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBoxShorthandResolver;
.source "PaddingShorthandResolver.java"


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
    const-string v0, ""

    return-object v0
.end method

.method protected getPrefix()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "padding"

    return-object v0
.end method
