.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssColorValidator;
.super Ljava/lang/Object;
.source "CssColorValidator.java"

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
    invoke-static {p1}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBAColor(Ljava/lang/String;)[F

    move-result-object v0

    .line 60
    .local v0, "rgbaColor":[F
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
