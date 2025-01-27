.class public Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;
.super Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;
.source "TupleSerialMarshalledKeyCreator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;",
        ">",
        "Lcom/sleepycat/bind/serial/TupleSerialKeyCreator<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private binding:Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding<",
            "TD;>;"
        }
    .end annotation
.end field

.field private keyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;Ljava/lang/String;)V
    .locals 2
    .param p2, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding<",
            "TD;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator<TD;>;"
    .local p1, "binding":Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding<TD;>;"
    iget-object v0, p1, Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-direct {p0, v0}, Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;-><init>(Lcom/sleepycat/bind/serial/SerialBinding;)V

    .line 51
    iput-object p1, p0, Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;->binding:Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;

    .line 52
    iput-object p2, p0, Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;->keyName:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    if-eqz v0, :cond_0

    .line 57
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dataBinding may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createSecondaryKey(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;Lcom/sleepycat/bind/tuple/TupleOutput;)Z
    .locals 2
    .param p1, "primaryKeyInput"    # Lcom/sleepycat/bind/tuple/TupleInput;
    .param p3, "indexKeyOutput"    # Lcom/sleepycat/bind/tuple/TupleOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/tuple/TupleInput;",
            "TD;",
            "Lcom/sleepycat/bind/tuple/TupleOutput;",
            ")Z"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator<TD;>;"
    .local p2, "dataInput":Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;, "TD;"
    iget-object v0, p0, Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;->binding:Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;

    .line 70
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;)Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    move-result-object v0

    .line 72
    .local v0, "entity":Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;
    iget-object v1, p0, Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;->keyName:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;->marshalSecondaryKey(Ljava/lang/String;Lcom/sleepycat/bind/tuple/TupleOutput;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic createSecondaryKey(Lcom/sleepycat/bind/tuple/TupleInput;Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)Z
    .locals 0

    .line 30
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator<TD;>;"
    check-cast p2, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;->createSecondaryKey(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;Lcom/sleepycat/bind/tuple/TupleOutput;)Z

    move-result p1

    return p1
.end method

.method public nullifyForeignKey(Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;)Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TD;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator<TD;>;"
    .local p1, "dataInput":Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;, "TD;"
    iget-object v0, p0, Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;->binding:Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;)Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    move-result-object v0

    .line 81
    .local v0, "entity":Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;
    iget-object v2, p0, Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;->keyName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;->nullifyForeignKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public bridge synthetic nullifyForeignKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;, "Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator<TD;>;"
    check-cast p1, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;->nullifyForeignKey(Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;)Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    move-result-object p1

    return-object p1
.end method
