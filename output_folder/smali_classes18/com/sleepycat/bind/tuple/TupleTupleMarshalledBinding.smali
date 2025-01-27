.class public Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;
.super Lcom/sleepycat/bind/tuple/TupleTupleBinding;
.source "TupleTupleMarshalledBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;",
        ":",
        "Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;",
        ">",
        "Lcom/sleepycat/bind/tuple/TupleTupleBinding<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;, "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding<TE;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleTupleBinding;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;->cls:Ljava/lang/Class;

    .line 54
    const-class v0, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-class v0, Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement MarshalledTupleEntry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement MarshalledTupleKeyEntity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;
    .locals 2
    .param p1, "keyInput"    # Lcom/sleepycat/bind/tuple/TupleInput;
    .param p2, "dataInput"    # Lcom/sleepycat/bind/tuple/TupleInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/tuple/TupleInput;",
            "Lcom/sleepycat/bind/tuple/TupleInput;",
            ")TE;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;, "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding<TE;>;"
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v0, "obj":Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;, "TE;"
    nop

    .line 80
    if-eqz p2, :cond_0

    .line 81
    invoke-interface {v0, p2}, Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;->unmarshalEntry(Lcom/sleepycat/bind/tuple/TupleInput;)V

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    .line 84
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    invoke-interface {v1, p1}, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;->unmarshalPrimaryKey(Lcom/sleepycat/bind/tuple/TupleInput;)V

    .line 86
    :cond_1
    return-object v0

    .line 77
    .end local v0    # "obj":Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;, "TE;"
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-static {v0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 75
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .locals 0

    .line 31
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;, "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;

    move-result-object p1

    return-object p1
.end method

.method public objectToData(Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0
    .param p2, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/bind/tuple/TupleOutput;",
            ")V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;, "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding<TE;>;"
    .local p1, "object":Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;, "TE;"
    invoke-interface {p1, p2}, Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;->marshalEntry(Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 99
    return-void
.end method

.method public bridge synthetic objectToData(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 31
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;, "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding<TE;>;"
    check-cast p1, Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;->objectToData(Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method

.method public objectToKey(Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 1
    .param p2, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/bind/tuple/TupleOutput;",
            ")V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;, "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding<TE;>;"
    .local p1, "object":Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;, "TE;"
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    invoke-interface {v0, p2}, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;->marshalPrimaryKey(Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 93
    return-void
.end method

.method public bridge synthetic objectToKey(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 31
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;, "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding<TE;>;"
    check-cast p1, Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;->objectToKey(Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method
