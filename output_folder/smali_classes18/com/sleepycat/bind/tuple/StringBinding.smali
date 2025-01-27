.class public Lcom/sleepycat/bind/tuple/StringBinding;
.super Lcom/sleepycat/bind/tuple/TupleBinding;
.source "StringBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/bind/tuple/TupleBinding<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBinding;-><init>()V

    return-void
.end method

.method public static entryToString(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 64
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/StringBinding;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sizedOutput(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/util/UtfOps;->getByteLength([C)I

    move-result v1

    :goto_0
    nop

    .line 87
    .local v1, "stringLength":I
    add-int/2addr v1, v0

    .line 88
    new-instance v0, Lcom/sleepycat/bind/tuple/TupleOutput;

    new-array v2, v1, [B

    invoke-direct {v0, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>([B)V

    return-object v0
.end method

.method public static stringToEntry(Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 76
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/StringBinding;->sizedOutput(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeString(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sleepycat/bind/tuple/StringBinding;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 77
    return-void
.end method


# virtual methods
.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/StringBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 40
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/StringBinding;->getTupleOutput(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object p1

    return-object p1
.end method

.method protected getTupleOutput(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "object"    # Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/sleepycat/bind/tuple/StringBinding;->sizedOutput(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/tuple/StringBinding;->objectToEntry(Ljava/lang/String;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method

.method public objectToEntry(Ljava/lang/String;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/String;
    .param p2, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 46
    invoke-virtual {p2, p1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeString(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 47
    return-void
.end method
