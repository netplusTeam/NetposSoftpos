.class Ljdbm/helper/SoftCache$Entry;
.super Ljava/lang/ref/SoftReference;
.source "SoftCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdbm/helper/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private final _key:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "queue"    # Ljava/lang/ref/ReferenceQueue;

    .line 274
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 275
    iput-object p1, p0, Ljdbm/helper/SoftCache$Entry;->_key:Ljava/lang/Object;

    .line 276
    return-void
.end method


# virtual methods
.method final getKey()Ljava/lang/Object;
    .locals 1

    .line 283
    iget-object v0, p0, Ljdbm/helper/SoftCache$Entry;->_key:Ljava/lang/Object;

    return-object v0
.end method

.method final getValue()Ljava/lang/Object;
    .locals 1

    .line 291
    invoke-virtual {p0}, Ljdbm/helper/SoftCache$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
