.class public final Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V
    .locals 3

    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->getCode()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method
