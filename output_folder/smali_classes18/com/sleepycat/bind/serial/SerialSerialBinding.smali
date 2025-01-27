.class public abstract Lcom/sleepycat/bind/serial/SerialSerialBinding;
.super Ljava/lang/Object;
.source "SerialSerialBinding.java"

# interfaces
.implements Lcom/sleepycat/bind/EntityBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sleepycat/bind/EntityBinding<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/bind/serial/SerialBinding<",
            "TD;>;"
        }
    .end annotation
.end field

.field private keyBinding:Lcom/sleepycat/bind/serial/SerialBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/bind/serial/SerialBinding<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p1, "classCatalog"    # Lcom/sleepycat/bind/serial/ClassCatalog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/serial/ClassCatalog;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TD;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialSerialBinding;, "Lcom/sleepycat/bind/serial/SerialSerialBinding<TK;TD;TE;>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    new-instance v0, Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-direct {v0, p1, p2}, Lcom/sleepycat/bind/serial/SerialBinding;-><init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;)V

    new-instance v1, Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-direct {v1, p1, p3}, Lcom/sleepycat/bind/serial/SerialBinding;-><init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/bind/serial/SerialSerialBinding;-><init>(Lcom/sleepycat/bind/serial/SerialBinding;Lcom/sleepycat/bind/serial/SerialBinding;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/bind/serial/SerialBinding;Lcom/sleepycat/bind/serial/SerialBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/serial/SerialBinding<",
            "TK;>;",
            "Lcom/sleepycat/bind/serial/SerialBinding<",
            "TD;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialSerialBinding;, "Lcom/sleepycat/bind/serial/SerialSerialBinding<TK;TD;TE;>;"
    .local p1, "keyBinding":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TK;>;"
    .local p2, "dataBinding":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sleepycat/bind/serial/SerialSerialBinding;->keyBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    .line 71
    iput-object p2, p0, Lcom/sleepycat/bind/serial/SerialSerialBinding;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    .line 72
    return-void
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")TE;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialSerialBinding;, "Lcom/sleepycat/bind/serial/SerialSerialBinding<TK;TD;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/bind/serial/SerialSerialBinding;->keyBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-virtual {v0, p1}, Lcom/sleepycat/bind/serial/SerialBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/bind/serial/SerialSerialBinding;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    .line 78
    invoke-virtual {v1, p2}, Lcom/sleepycat/bind/serial/SerialBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/bind/serial/SerialSerialBinding;->entryToObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract entryToObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TD;)TE;"
        }
    .end annotation
.end method

.method public abstract objectToData(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TD;"
        }
    .end annotation
.end method

.method public objectToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialSerialBinding;, "Lcom/sleepycat/bind/serial/SerialSerialBinding<TK;TD;TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/serial/SerialSerialBinding;->objectToData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "dataObject":Ljava/lang/Object;, "TD;"
    iget-object v1, p0, Lcom/sleepycat/bind/serial/SerialSerialBinding;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-virtual {v1, v0, p2}, Lcom/sleepycat/bind/serial/SerialBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 93
    return-void
.end method

.method public abstract objectToKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TK;"
        }
    .end annotation
.end method

.method public objectToKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialSerialBinding;, "Lcom/sleepycat/bind/serial/SerialSerialBinding<TK;TD;TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/serial/SerialSerialBinding;->objectToKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "keyObject":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/sleepycat/bind/serial/SerialSerialBinding;->keyBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-virtual {v1, v0, p2}, Lcom/sleepycat/bind/serial/SerialBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 86
    return-void
.end method
