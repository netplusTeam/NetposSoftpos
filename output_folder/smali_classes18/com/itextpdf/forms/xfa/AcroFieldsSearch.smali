.class Lcom/itextpdf/forms/xfa/AcroFieldsSearch;
.super Lcom/itextpdf/forms/xfa/Xml2Som;
.source "AcroFieldsSearch.java"


# instance fields
.field private acroShort2LongName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/itextpdf/forms/xfa/Xml2Som;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->inverseSearch:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->acroShort2LongName:Ljava/util/Map;

    .line 64
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, "itemName":Ljava/lang/String;
    invoke-static {v1}, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "itemShort":Ljava/lang/String;
    iget-object v3, p0, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->acroShort2LongName:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v3, p0, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->inverseSearch:Ljava/util/Map;

    invoke-static {v2}, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->splitParts(Ljava/lang/String;)Ljava/util/Stack;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->inverseSearchAdd(Ljava/util/Map;Ljava/util/Stack;Ljava/lang/String;)V

    .line 68
    .end local v1    # "itemName":Ljava/lang/String;
    .end local v2    # "itemShort":Ljava/lang/String;
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public getAcroShort2LongName()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->acroShort2LongName:Ljava/util/Map;

    return-object v0
.end method

.method public setAcroShort2LongName(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p1, "acroShort2LongName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->acroShort2LongName:Ljava/util/Map;

    .line 89
    return-void
.end method
