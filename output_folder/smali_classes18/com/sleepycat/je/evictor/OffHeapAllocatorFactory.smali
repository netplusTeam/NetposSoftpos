.class public Lcom/sleepycat/je/evictor/OffHeapAllocatorFactory;
.super Ljava/lang/Object;
.source "OffHeapAllocatorFactory.java"


# instance fields
.field private defaultAllocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    nop

    .line 34
    const-string v0, "com.sleepycat.je.evictor.CHeapAllocator"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 36
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/evictor/OffHeapAllocator;

    iput-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapAllocatorFactory;->defaultAllocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    .line 37
    return-void
.end method


# virtual methods
.method public getDefaultAllocator()Lcom/sleepycat/je/evictor/OffHeapAllocator;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapAllocatorFactory;->defaultAllocator:Lcom/sleepycat/je/evictor/OffHeapAllocator;

    return-object v0
.end method
