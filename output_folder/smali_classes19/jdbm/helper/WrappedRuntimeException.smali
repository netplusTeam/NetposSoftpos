.class public Ljdbm/helper/WrappedRuntimeException;
.super Ljava/lang/RuntimeException;
.source "WrappedRuntimeException.java"


# instance fields
.field private final _except:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "except"    # Ljava/lang/Exception;

    .line 97
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "No message available"

    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    instance-of v0, p1, Ljdbm/helper/WrappedRuntimeException;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljdbm/helper/WrappedRuntimeException;

    iget-object v0, v0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 102
    move-object v0, p1

    check-cast v0, Ljdbm/helper/WrappedRuntimeException;

    iget-object v0, v0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    iput-object v0, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    iput-object p1, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    .line 106
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "except"    # Ljava/lang/Exception;

    .line 78
    if-nez p1, :cond_0

    const-string v0, "No message available"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 80
    instance-of v0, p2, Ljdbm/helper/WrappedRuntimeException;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljdbm/helper/WrappedRuntimeException;

    iget-object v0, v0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 83
    move-object v0, p2

    check-cast v0, Ljdbm/helper/WrappedRuntimeException;

    iget-object v0, v0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    iput-object v0, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iput-object p2, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    .line 87
    :goto_1
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 116
    iget-object v0, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .line 122
    iget-object v0, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 123
    invoke-super {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    :goto_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/PrintStream;

    .line 132
    iget-object v0, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 133
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 137
    :goto_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 142
    iget-object v0, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 143
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 144
    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 147
    :goto_0
    return-void
.end method
