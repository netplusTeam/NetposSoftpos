.class public Ljdbm/helper/IterationException;
.super Ljdbm/helper/WrappedRuntimeException;
.source "IterationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "except"    # Ljava/lang/Exception;

    .line 92
    invoke-direct {p0, p1}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "except"    # Ljava/lang/Exception;

    .line 70
    invoke-direct {p0, p1, p2}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 71
    return-void
.end method
