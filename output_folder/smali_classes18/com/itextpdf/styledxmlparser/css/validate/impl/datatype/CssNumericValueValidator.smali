.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumericValueValidator;
.super Ljava/lang/Object;
.source "CssNumericValueValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final allowedNormal:Z

.field private final allowedPercent:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "allowedPercent"    # Z
    .param p2, "allowedNormal"    # Z

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumericValueValidator;->allowedPercent:Z

    .line 49
    iput-boolean p2, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumericValueValidator;->allowedNormal:Z

    .line 50
    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "objectString"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 58
    return v0

    .line 60
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

    .line 61
    const-string/jumbo v1, "unset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "normal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumericValueValidator;->allowedNormal:Z

    return v0

    .line 67
    :cond_2
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isValidNumericValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 68
    return v0

    .line 70
    :cond_3
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isPercentageValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumericValueValidator;->allowedPercent:Z

    return v0

    .line 73
    :cond_4
    return v2

    .line 62
    :cond_5
    :goto_0
    return v2
.end method
