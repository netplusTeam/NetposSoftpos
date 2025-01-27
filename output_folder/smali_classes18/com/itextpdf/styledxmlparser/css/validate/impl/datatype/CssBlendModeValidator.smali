.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBlendModeValidator;
.super Ljava/lang/Object;
.source "CssBlendModeValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "objectString"    # Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BLEND_MODE_VALUES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
