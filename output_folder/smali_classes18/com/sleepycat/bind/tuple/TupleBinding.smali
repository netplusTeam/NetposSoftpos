.class public abstract Lcom/sleepycat/bind/tuple/TupleBinding;
.super Lcom/sleepycat/bind/tuple/TupleBase;
.source "TupleBinding.java"

# interfaces
.implements Lcom/sleepycat/bind/EntryBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/bind/tuple/TupleBase<",
        "TE;>;",
        "Lcom/sleepycat/bind/EntryBinding<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final primitives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/sleepycat/bind/tuple/TupleBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/bind/tuple/TupleBinding;->primitives:Ljava/util/Map;

    .line 48
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/sleepycat/bind/tuple/StringBinding;

    invoke-direct {v2}, Lcom/sleepycat/bind/tuple/StringBinding;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleBinding;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/bind/tuple/TupleBinding;)V

    .line 49
    const-class v0, Ljava/lang/Character;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/bind/tuple/CharacterBinding;

    invoke-direct {v2}, Lcom/sleepycat/bind/tuple/CharacterBinding;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleBinding;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/bind/tuple/TupleBinding;)V

    .line 50
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/bind/tuple/BooleanBinding;

    invoke-direct {v2}, Lcom/sleepycat/bind/tuple/BooleanBinding;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleBinding;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/bind/tuple/TupleBinding;)V

    .line 51
    const-class v0, Ljava/lang/Byte;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/bind/tuple/ByteBinding;

    invoke-direct {v2}, Lcom/sleepycat/bind/tuple/ByteBinding;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleBinding;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/bind/tuple/TupleBinding;)V

    .line 52
    const-class v0, Ljava/lang/Short;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/bind/tuple/ShortBinding;

    invoke-direct {v2}, Lcom/sleepycat/bind/tuple/ShortBinding;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleBinding;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/bind/tuple/TupleBinding;)V

    .line 53
    const-class v0, Ljava/lang/Integer;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/bind/tuple/IntegerBinding;

    invoke-direct {v2}, Lcom/sleepycat/bind/tuple/IntegerBinding;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleBinding;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/bind/tuple/TupleBinding;)V

    .line 54
    const-class v0, Ljava/lang/Long;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/bind/tuple/LongBinding;

    invoke-direct {v2}, Lcom/sleepycat/bind/tuple/LongBinding;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleBinding;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/bind/tuple/TupleBinding;)V

    .line 55
    const-class v0, Ljava/lang/Float;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/bind/tuple/FloatBinding;

    invoke-direct {v2}, Lcom/sleepycat/bind/tuple/FloatBinding;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleBinding;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/bind/tuple/TupleBinding;)V

    .line 56
    const-class v0, Ljava/lang/Double;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/bind/tuple/DoubleBinding;

    invoke-direct {v2}, Lcom/sleepycat/bind/tuple/DoubleBinding;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleBinding;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/bind/tuple/TupleBinding;)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleBinding;, "Lcom/sleepycat/bind/tuple/TupleBinding<TE;>;"
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBase;-><init>()V

    .line 69
    return-void
.end method

.method private static addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/bind/tuple/TupleBinding;)V
    .locals 1
    .param p0, "cls1"    # Ljava/lang/Class;
    .param p1, "cls2"    # Ljava/lang/Class;
    .param p2, "binding"    # Lcom/sleepycat/bind/tuple/TupleBinding;

    .line 61
    sget-object v0, Lcom/sleepycat/bind/tuple/TupleBinding;->primitives:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public static getPrimitiveBinding(Ljava/lang/Class;)Lcom/sleepycat/bind/tuple/TupleBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/sleepycat/bind/tuple/TupleBinding<",
            "TT;>;"
        }
    .end annotation

    .line 133
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/sleepycat/bind/tuple/TupleBinding;->primitives:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/bind/tuple/TupleBinding;

    return-object v0
.end method


# virtual methods
.method public abstract entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/tuple/TupleInput;",
            ")TE;"
        }
    .end annotation
.end method

.method public entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")TE;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleBinding;, "Lcom/sleepycat/bind/tuple/TupleBinding<TE;>;"
    invoke-static {p1}, Lcom/sleepycat/bind/tuple/TupleBinding;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/bind/tuple/TupleOutput;",
            ")V"
        }
    .end annotation
.end method

.method public objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p2, "entry"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleBinding;, "Lcom/sleepycat/bind/tuple/TupleBinding<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/TupleBinding;->getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    .line 81
    .local v0, "output":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/bind/tuple/TupleBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 82
    invoke-static {v0, p2}, Lcom/sleepycat/bind/tuple/TupleBinding;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 83
    return-void
.end method
