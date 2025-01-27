.class Ljdbm/helper/CacheEntry;
.super Ljava/lang/Object;
.source "MRU.java"


# instance fields
.field private _key:Ljava/lang/Object;

.field private _next:Ljdbm/helper/CacheEntry;

.field private _previous:Ljdbm/helper/CacheEntry;

.field private _value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Ljdbm/helper/CacheEntry;->_key:Ljava/lang/Object;

    .line 279
    iput-object p2, p0, Ljdbm/helper/CacheEntry;->_value:Ljava/lang/Object;

    .line 280
    return-void
.end method


# virtual methods
.method getKey()Ljava/lang/Object;
    .locals 1

    .line 283
    iget-object v0, p0, Ljdbm/helper/CacheEntry;->_key:Ljava/lang/Object;

    return-object v0
.end method

.method getNext()Ljdbm/helper/CacheEntry;
    .locals 1

    .line 307
    iget-object v0, p0, Ljdbm/helper/CacheEntry;->_next:Ljdbm/helper/CacheEntry;

    return-object v0
.end method

.method getPrevious()Ljdbm/helper/CacheEntry;
    .locals 1

    .line 299
    iget-object v0, p0, Ljdbm/helper/CacheEntry;->_previous:Ljdbm/helper/CacheEntry;

    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .line 291
    iget-object v0, p0, Ljdbm/helper/CacheEntry;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method setKey(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 287
    iput-object p1, p0, Ljdbm/helper/CacheEntry;->_key:Ljava/lang/Object;

    .line 288
    return-void
.end method

.method setNext(Ljdbm/helper/CacheEntry;)V
    .locals 0
    .param p1, "entry"    # Ljdbm/helper/CacheEntry;

    .line 311
    iput-object p1, p0, Ljdbm/helper/CacheEntry;->_next:Ljdbm/helper/CacheEntry;

    .line 312
    return-void
.end method

.method setPrevious(Ljdbm/helper/CacheEntry;)V
    .locals 0
    .param p1, "entry"    # Ljdbm/helper/CacheEntry;

    .line 303
    iput-object p1, p0, Ljdbm/helper/CacheEntry;->_previous:Ljdbm/helper/CacheEntry;

    .line 304
    return-void
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 295
    iput-object p1, p0, Ljdbm/helper/CacheEntry;->_value:Ljava/lang/Object;

    .line 296
    return-void
.end method
