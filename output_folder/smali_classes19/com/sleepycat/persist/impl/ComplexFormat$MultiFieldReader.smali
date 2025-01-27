.class Lcom/sleepycat/persist/impl/ComplexFormat$MultiFieldReader;
.super Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
.source "ComplexFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/ComplexFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiFieldReader"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53c418e88729ab01L


# instance fields
.field private subReaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;",
            ">;)V"
        }
    .end annotation

    .line 2061
    .local p1, "subReaders":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;>;"
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;-><init>()V

    .line 2062
    iput-object p1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$MultiFieldReader;->subReaders:Ljava/util/List;

    .line 2063
    return-void
.end method


# virtual methods
.method initialize(Lcom/sleepycat/persist/impl/Catalog;ILcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/ComplexFormat;Z)V
    .locals 8
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "initVersion"    # I
    .param p3, "oldParentFormat"    # Lcom/sleepycat/persist/impl/ComplexFormat;
    .param p4, "newParentFormat"    # Lcom/sleepycat/persist/impl/ComplexFormat;
    .param p5, "isOldSecKey"    # Z

    .line 2071
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$MultiFieldReader;->subReaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    .line 2072
    .local v1, "reader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    nop

    .line 2073
    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->initialize(Lcom/sleepycat/persist/impl/Catalog;ILcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/ComplexFormat;Z)V

    .line 2075
    .end local v1    # "reader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    goto :goto_0

    .line 2076
    :cond_0
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

    .line 2085
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$MultiFieldReader;->subReaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    .line 2086
    .local v1, "reader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->readFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Accessor;I)V

    .line 2087
    .end local v1    # "reader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    goto :goto_0

    .line 2088
    :cond_0
    return-void
.end method
