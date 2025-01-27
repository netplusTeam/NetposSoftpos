.class Ljdbm/helper/MRUEnumeration;
.super Ljava/lang/Object;
.source "MRU.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field _enum:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Ljava/util/Enumeration;)V
    .locals 0
    .param p1, "enume"    # Ljava/util/Enumeration;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Ljdbm/helper/MRUEnumeration;->_enum:Ljava/util/Enumeration;

    .line 324
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 327
    iget-object v0, p0, Ljdbm/helper/MRUEnumeration;->_enum:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .line 331
    iget-object v0, p0, Ljdbm/helper/MRUEnumeration;->_enum:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/helper/CacheEntry;

    .line 332
    .local v0, "entry":Ljdbm/helper/CacheEntry;
    invoke-virtual {v0}, Ljdbm/helper/CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
