.class public Lcom/sleepycat/je/dbi/SequenceStatDefinition;
.super Ljava/lang/Object;
.source "SequenceStatDefinition.java"


# static fields
.field public static final GROUP_DESC:Ljava/lang/String; = "Sequence statistics"

.field public static final GROUP_NAME:Ljava/lang/String; = "Sequence"

.field public static final SEQUENCE_CACHED_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SEQUENCE_CACHE_LAST:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SEQUENCE_CACHE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SEQUENCE_CACHE_VALUE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SEQUENCE_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SEQUENCE_RANGE_MAX:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SEQUENCE_RANGE_MIN:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SEQUENCE_STORED_VALUE:Lcom/sleepycat/je/utilint/StatDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nGets"

    const-string v2, "Number of times that Sequence.get was called successfully."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 31
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCachedGets"

    const-string v2, "Number of times that Sequence.get was called and a cached value was returned."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_CACHED_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 36
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "current"

    const-string v2, "The current value of the sequence in the database."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_STORED_VALUE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 41
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "value"

    const-string v2, "The current cached value of the sequence."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_CACHE_VALUE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 45
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "lastValue"

    const-string v2, "The last cached value of the sequence."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_CACHE_LAST:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 49
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "min"

    const-string v2, "The minimum permitted value of the sequence."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_RANGE_MIN:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 53
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "max"

    const-string v2, "The maximum permitted value of the sequence."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_RANGE_MAX:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 57
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "cacheSize"

    const-string v2, "The mumber of values that will be cached in this handle."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_CACHE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
