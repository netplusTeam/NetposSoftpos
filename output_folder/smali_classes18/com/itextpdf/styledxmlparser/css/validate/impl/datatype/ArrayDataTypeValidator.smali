.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/ArrayDataTypeValidator;
.super Ljava/lang/Object;
.source "ArrayDataTypeValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# instance fields
.field private final dataTypeValidator:Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V
    .locals 0
    .param p1, "dataTypeValidator"    # Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/ArrayDataTypeValidator;->dataTypeValidator:Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    .line 66
    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 6
    .param p1, "objectString"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 71
    return v0

    .line 73
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->splitStringWithComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 74
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/ArrayDataTypeValidator;->dataTypeValidator:Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    return v0

    .line 78
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
