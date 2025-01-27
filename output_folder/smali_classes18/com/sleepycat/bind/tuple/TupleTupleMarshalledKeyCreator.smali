.class public Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator;
.super Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;
.source "TupleTupleMarshalledKeyCreator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;",
        ":",
        "Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;",
        ">",
        "Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private binding:Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding<",
            "TE;>;"
        }
    .end annotation
.end field

.field private keyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;Ljava/lang/String;)V
    .locals 0
    .param p2, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding<",
            "TE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator;, "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator<TE;>;"
    .local p1, "binding":Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;, "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding<TE;>;"
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator;->binding:Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;

    .line 50
    iput-object p2, p0, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator;->keyName:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public createSecondaryKey(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleOutput;)Z
    .locals 3
    .param p1, "primaryKeyInput"    # Lcom/sleepycat/bind/tuple/TupleInput;
    .param p2, "dataInput"    # Lcom/sleepycat/bind/tuple/TupleInput;
    .param p3, "indexKeyOutput"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 62
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator;, "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator;->binding:Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;

    move-result-object v0

    .line 63
    .local v0, "entity":Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;, "TE;"
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    iget-object v2, p0, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator;->keyName:Ljava/lang/String;

    invoke-interface {v1, v2, p3}, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;->marshalSecondaryKey(Ljava/lang/String;Lcom/sleepycat/bind/tuple/TupleOutput;)Z

    move-result v1

    return v1
.end method

.method public nullifyForeignKey(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleOutput;)Z
    .locals 3
    .param p1, "dataInput"    # Lcom/sleepycat/bind/tuple/TupleInput;
    .param p2, "dataOutput"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 70
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator;, "Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator;->binding:Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;

    move-result-object v0

    .line 71
    .local v0, "entity":Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;, "TE;"
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;

    iget-object v2, p0, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator;->keyName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;->nullifyForeignKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledKeyCreator;->binding:Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;

    invoke-virtual {v1, v0, p2}, Lcom/sleepycat/bind/tuple/TupleTupleMarshalledBinding;->objectToData(Lcom/sleepycat/bind/tuple/MarshalledTupleEntry;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 73
    const/4 v1, 0x1

    return v1

    .line 75
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
