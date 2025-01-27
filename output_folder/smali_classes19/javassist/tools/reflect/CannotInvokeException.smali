.class public Ljavassist/tools/reflect/CannotInvokeException;
.super Ljava/lang/RuntimeException;
.source "CannotInvokeException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private err:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/ClassNotFoundException;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/ClassNotFoundException;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/tools/reflect/CannotInvokeException;->err:Ljava/lang/Throwable;

    .line 68
    iput-object p1, p0, Ljavassist/tools/reflect/CannotInvokeException;->err:Ljava/lang/Throwable;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/IllegalAccessException;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/IllegalAccessException;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/tools/reflect/CannotInvokeException;->err:Ljava/lang/Throwable;

    .line 60
    iput-object p1, p0, Ljavassist/tools/reflect/CannotInvokeException;->err:Ljava/lang/Throwable;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/tools/reflect/CannotInvokeException;->err:Ljava/lang/Throwable;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/InvocationTargetException;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/reflect/InvocationTargetException;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/tools/reflect/CannotInvokeException;->err:Ljava/lang/Throwable;

    .line 52
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/reflect/CannotInvokeException;->err:Ljava/lang/Throwable;

    .line 53
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/Throwable;
    .locals 1

    .line 38
    iget-object v0, p0, Ljavassist/tools/reflect/CannotInvokeException;->err:Ljava/lang/Throwable;

    return-object v0
.end method
