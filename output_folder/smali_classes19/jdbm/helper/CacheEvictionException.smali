.class public Ljdbm/helper/CacheEvictionException;
.super Ljava/lang/Exception;
.source "CacheEvictionException.java"


# instance fields
.field protected _nested:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "nested"    # Ljava/lang/Exception;

    .line 67
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 68
    iput-object p1, p0, Ljdbm/helper/CacheEvictionException;->_nested:Ljava/lang/Exception;

    .line 69
    return-void
.end method


# virtual methods
.method public getNestedException()Ljava/lang/Exception;
    .locals 1

    .line 73
    iget-object v0, p0, Ljdbm/helper/CacheEvictionException;->_nested:Ljava/lang/Exception;

    return-object v0
.end method
