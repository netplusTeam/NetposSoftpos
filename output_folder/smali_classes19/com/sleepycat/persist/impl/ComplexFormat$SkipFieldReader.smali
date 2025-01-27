.class Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;
.super Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
.source "ComplexFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/ComplexFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkipFieldReader"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a784dfc258b916aL


# instance fields
.field private transient endField:I

.field private fieldFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/sleepycat/persist/impl/FieldInfo;)V
    .locals 2
    .param p1, "startField"    # I
    .param p2, "oldField"    # Lcom/sleepycat/persist/impl/FieldInfo;

    .line 1878
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;-><init>()V

    .line 1879
    iput p1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;->endField:I

    .line 1880
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;->fieldFormats:Ljava/util/List;

    .line 1881
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1882
    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 4
    .param p1, "startField"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 1870
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;-><init>()V

    .line 1871
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;->endField:I

    .line 1872
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;->fieldFormats:Ljava/util/List;

    .line 1873
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 1874
    .local v1, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;->fieldFormats:Ljava/util/List;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1875
    .end local v1    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    goto :goto_0

    .line 1876
    :cond_0
    return-void
.end method


# virtual methods
.method acceptField(IIZ)Z
    .locals 2
    .param p1, "oldFieldIndex"    # I
    .param p2, "newFieldIndex"    # I
    .param p3, "isNewSecKeyField"    # Z

    .line 1888
    iget v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;->endField:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method addField(Lcom/sleepycat/persist/impl/FieldInfo;)V
    .locals 2
    .param p1, "oldField"    # Lcom/sleepycat/persist/impl/FieldInfo;

    .line 1893
    iget v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;->endField:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;->endField:I

    .line 1894
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;->fieldFormats:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1895
    return-void
.end method

.method final readFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Accessor;I)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "accessor"    # Lcom/sleepycat/persist/impl/Accessor;
    .param p4, "superLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 1904
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;->fieldFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/Format;

    .line 1905
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-interface {p2, v1}, Lcom/sleepycat/persist/impl/EntityInput;->skipField(Lcom/sleepycat/persist/impl/Format;)V

    .line 1906
    .end local v1    # "format":Lcom/sleepycat/persist/impl/Format;
    goto :goto_0

    .line 1907
    :cond_0
    return-void
.end method
