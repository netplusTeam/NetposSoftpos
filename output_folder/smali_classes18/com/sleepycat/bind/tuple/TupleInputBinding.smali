.class public Lcom/sleepycat/bind/tuple/TupleInputBinding;
.super Ljava/lang/Object;
.source "TupleInputBinding.java"

# interfaces
.implements Lcom/sleepycat/bind/EntryBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sleepycat/bind/EntryBinding<",
        "Lcom/sleepycat/bind/tuple/TupleInput;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;
    .locals 1
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 42
    invoke-static {p1}, Lcom/sleepycat/bind/tuple/TupleBinding;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/TupleInputBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object p1

    return-object p1
.end method

.method public objectToEntry(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 0
    .param p1, "object"    # Lcom/sleepycat/bind/tuple/TupleInput;
    .param p2, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 48
    invoke-static {p1, p2}, Lcom/sleepycat/bind/tuple/TupleBinding;->inputToEntry(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 49
    return-void
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/sleepycat/bind/tuple/TupleInput;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/tuple/TupleInputBinding;->objectToEntry(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/je/DatabaseEntry;)V

    return-void
.end method
