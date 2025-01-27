.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssIdentifierValidator;
.super Ljava/lang/Object;
.source "CssIdentifierValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "objectString"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    return v1

    .line 66
    :cond_0
    const-string v0, "^[0-9].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    return v1

    .line 69
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
