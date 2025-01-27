.class Ljavassist/util/proxy/ProxyFactory$ProxyDetails;
.super Ljava/lang/Object;
.source "ProxyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/ProxyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProxyDetails"
.end annotation


# instance fields
.field isUseWriteReplace:Z

.field proxyClass:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field signature:[B


# direct methods
.method constructor <init>([BLjava/lang/Class;Z)V
    .locals 1
    .param p1, "signature"    # [B
    .param p3, "isUseWriteReplace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 376
    .local p2, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;->signature:[B

    .line 378
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;->proxyClass:Ljava/lang/ref/Reference;

    .line 379
    iput-boolean p3, p0, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;->isUseWriteReplace:Z

    .line 380
    return-void
.end method
