.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;
.super Ljava/lang/Object;
.source "CssLengthValueValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# instance fields
.field private final allowedNegative:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "allowedNegative"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;->allowedNegative:Z

    .line 43
    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "objectString"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 52
    return v0

    .line 54
    :cond_0
    const-string v1, "initial"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    const-string v1, "inherit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 55
    const-string/jumbo v1, "unset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 59
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isPercentageValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    :cond_2
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isZero(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    return v0

    .line 64
    :cond_3
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNegativeValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isZero(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 65
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;->allowedNegative:Z

    return v0

    .line 67
    :cond_4
    return v2

    .line 56
    :cond_5
    :goto_0
    return v2
.end method
