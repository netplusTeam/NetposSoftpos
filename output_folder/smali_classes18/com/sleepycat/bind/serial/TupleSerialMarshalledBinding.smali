.class public Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;
.super Lcom/sleepycat/bind/serial/TupleSerialBinding;
.source "TupleSerialMarshalledBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;",
        ">",
        "Lcom/sleepycat/bind/serial/TupleSerialBinding<",
        "TE;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;)V
    .locals 1
    .param p1, "classCatalog"    # Lcom/sleepycat/bind/serial/ClassCatalog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/serial/ClassCatalog;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding<TE;>;"
    .local p2, "baseClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-direct {v0, p1, p2}, Lcom/sleepycat/bind/serial/SerialBinding;-><init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;-><init>(Lcom/sleepycat/bind/serial/SerialBinding;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/bind/serial/SerialBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/serial/SerialBinding<",
            "TE;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding<TE;>;"
    .local p1, "dataBinding":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TE;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/bind/serial/TupleSerialBinding;-><init>(Lcom/sleepycat/bind/serial/SerialBinding;)V

    .line 66
    return-void
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;)Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;
    .locals 0
    .param p1, "tupleInput"    # Lcom/sleepycat/bind/tuple/TupleInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/tuple/TupleInput;",
            "TE;)TE;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding<TE;>;"
    .local p2, "javaInput":Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;, "TE;"
    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p2, p1}, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;->unmarshalPrimaryKey(Lcom/sleepycat/bind/tuple/TupleInput;)V

    .line 79
    :cond_0
    return-object p2
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding<TE;>;"
    check-cast p2, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;)Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    move-result-object p1

    return-object p1
.end method

.method public objectToData(Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;)Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding<TE;>;"
    .local p1, "object":Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;, "TE;"
    return-object p1
.end method

.method public bridge synthetic objectToData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding<TE;>;"
    check-cast p1, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;->objectToData(Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;)Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    move-result-object p1

    return-object p1
.end method

.method public objectToKey(Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0
    .param p2, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/bind/tuple/TupleOutput;",
            ")V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding<TE;>;"
    .local p1, "object":Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;, "TE;"
    invoke-interface {p1, p2}, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;->marshalPrimaryKey(Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 87
    return-void
.end method

.method public bridge synthetic objectToKey(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 38
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding<TE;>;"
    check-cast p1, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;->objectToKey(Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method
