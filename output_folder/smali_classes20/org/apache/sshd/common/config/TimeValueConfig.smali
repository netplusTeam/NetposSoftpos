.class public final enum Lorg/apache/sshd/common/config/TimeValueConfig;
.super Ljava/lang/Enum;
.source "TimeValueConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/config/TimeValueConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/config/TimeValueConfig;

.field public static final enum DAYS:Lorg/apache/sshd/common/config/TimeValueConfig;

.field public static final enum HOURS:Lorg/apache/sshd/common/config/TimeValueConfig;

.field public static final enum MINUTES:Lorg/apache/sshd/common/config/TimeValueConfig;

.field public static final enum SECONDS:Lorg/apache/sshd/common/config/TimeValueConfig;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/config/TimeValueConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum WEEKS:Lorg/apache/sshd/common/config/TimeValueConfig;


# instance fields
.field private final hiChar:C

.field private final interval:J

.field private final loChar:C


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 36
    new-instance v7, Lorg/apache/sshd/common/config/TimeValueConfig;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    const-string v1, "SECONDS"

    const/4 v2, 0x0

    const/16 v3, 0x73

    const/16 v4, 0x53

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/sshd/common/config/TimeValueConfig;-><init>(Ljava/lang/String;ICCJ)V

    sput-object v7, Lorg/apache/sshd/common/config/TimeValueConfig;->SECONDS:Lorg/apache/sshd/common/config/TimeValueConfig;

    .line 37
    new-instance v0, Lorg/apache/sshd/common/config/TimeValueConfig;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v15

    const-string v11, "MINUTES"

    const/4 v12, 0x1

    const/16 v13, 0x6d

    const/16 v14, 0x4d

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/apache/sshd/common/config/TimeValueConfig;-><init>(Ljava/lang/String;ICCJ)V

    sput-object v0, Lorg/apache/sshd/common/config/TimeValueConfig;->MINUTES:Lorg/apache/sshd/common/config/TimeValueConfig;

    .line 38
    new-instance v1, Lorg/apache/sshd/common/config/TimeValueConfig;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v22

    const-string v18, "HOURS"

    const/16 v19, 0x2

    const/16 v20, 0x68

    const/16 v21, 0x48

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v23}, Lorg/apache/sshd/common/config/TimeValueConfig;-><init>(Ljava/lang/String;ICCJ)V

    sput-object v1, Lorg/apache/sshd/common/config/TimeValueConfig;->HOURS:Lorg/apache/sshd/common/config/TimeValueConfig;

    .line 39
    new-instance v2, Lorg/apache/sshd/common/config/TimeValueConfig;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v15

    const-string v11, "DAYS"

    const/4 v12, 0x3

    const/16 v13, 0x64

    const/16 v14, 0x44

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lorg/apache/sshd/common/config/TimeValueConfig;-><init>(Ljava/lang/String;ICCJ)V

    sput-object v2, Lorg/apache/sshd/common/config/TimeValueConfig;->DAYS:Lorg/apache/sshd/common/config/TimeValueConfig;

    .line 40
    new-instance v3, Lorg/apache/sshd/common/config/TimeValueConfig;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x7

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v22

    const-string v18, "WEEKS"

    const/16 v19, 0x4

    const/16 v20, 0x77

    const/16 v21, 0x57

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Lorg/apache/sshd/common/config/TimeValueConfig;-><init>(Ljava/lang/String;ICCJ)V

    sput-object v3, Lorg/apache/sshd/common/config/TimeValueConfig;->WEEKS:Lorg/apache/sshd/common/config/TimeValueConfig;

    .line 35
    const/4 v4, 0x5

    new-array v4, v4, [Lorg/apache/sshd/common/config/TimeValueConfig;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lorg/apache/sshd/common/config/TimeValueConfig;->$VALUES:[Lorg/apache/sshd/common/config/TimeValueConfig;

    .line 42
    const-class v0, Lorg/apache/sshd/common/config/TimeValueConfig;

    .line 43
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/TimeValueConfig;->VALUES:Ljava/util/Set;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICCJ)V
    .locals 0
    .param p3, "lo"    # C
    .param p4, "hi"    # C
    .param p5, "interval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CCJ)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-char p3, p0, Lorg/apache/sshd/common/config/TimeValueConfig;->loChar:C

    .line 51
    iput-char p4, p0, Lorg/apache/sshd/common/config/TimeValueConfig;->hiChar:C

    .line 52
    iput-wide p5, p0, Lorg/apache/sshd/common/config/TimeValueConfig;->interval:J

    .line 53
    return-void
.end method

.method public static durationOf(Ljava/lang/String;)J
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 88
    invoke-static {p0}, Lorg/apache/sshd/common/config/TimeValueConfig;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 89
    .local v0, "spec":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/config/TimeValueConfig;Ljava/lang/Long;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/config/TimeValueConfig;->durationOf(Ljava/util/Map;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static durationOf(Ljava/util/Map;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/config/TimeValueConfig;",
            "+",
            "Ljava/lang/Number;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 160
    .local p0, "spec":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/config/TimeValueConfig;+Ljava/lang/Number;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-wide/16 v0, -0x1

    return-wide v0

    .line 164
    :cond_0
    const-wide/16 v0, 0x0

    .line 166
    .local v0, "total":J
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 167
    .local v3, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/sshd/common/config/TimeValueConfig;+Ljava/lang/Number;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/config/TimeValueConfig;

    .line 168
    .local v4, "v":Lorg/apache/sshd/common/config/TimeValueConfig;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    .line 169
    .local v5, "c":Ljava/lang/Number;
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 170
    .local v6, "factor":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    .line 174
    invoke-virtual {v4}, Lorg/apache/sshd/common/config/TimeValueConfig;->getInterval()J

    move-result-wide v8

    mul-long/2addr v8, v6

    .line 175
    .local v8, "added":J
    add-long/2addr v0, v8

    .line 176
    .end local v3    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/sshd/common/config/TimeValueConfig;+Ljava/lang/Number;>;"
    .end local v4    # "v":Lorg/apache/sshd/common/config/TimeValueConfig;
    .end local v5    # "c":Ljava/lang/Number;
    .end local v6    # "factor":J
    .end local v8    # "added":J
    goto :goto_0

    .line 171
    .restart local v3    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/sshd/common/config/TimeValueConfig;+Ljava/lang/Number;>;"
    .restart local v4    # "v":Lorg/apache/sshd/common/config/TimeValueConfig;
    .restart local v5    # "c":Ljava/lang/Number;
    .restart local v6    # "factor":J
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "valueOf("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") bad factor ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lorg/apache/sshd/common/config/TimeValueConfig;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    .end local v3    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/sshd/common/config/TimeValueConfig;+Ljava/lang/Number;>;"
    .end local v4    # "v":Lorg/apache/sshd/common/config/TimeValueConfig;
    .end local v5    # "c":Ljava/lang/Number;
    .end local v6    # "factor":J
    :cond_2
    return-wide v0
.end method

.method public static fromValueChar(C)Lorg/apache/sshd/common/config/TimeValueConfig;
    .locals 4
    .param p0, "ch"    # C

    .line 68
    const/4 v0, 0x0

    const/16 v1, 0x20

    if-le p0, v1, :cond_4

    const/16 v1, 0x7f

    if-lt p0, v1, :cond_0

    goto :goto_2

    .line 72
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/config/TimeValueConfig;->VALUES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/config/TimeValueConfig;

    .line 73
    .local v2, "v":Lorg/apache/sshd/common/config/TimeValueConfig;
    invoke-virtual {v2}, Lorg/apache/sshd/common/config/TimeValueConfig;->getLowerCaseValue()C

    move-result v3

    if-eq v3, p0, :cond_2

    invoke-virtual {v2}, Lorg/apache/sshd/common/config/TimeValueConfig;->getUpperCaseValue()C

    move-result v3

    if-ne v3, p0, :cond_1

    goto :goto_1

    .line 76
    .end local v2    # "v":Lorg/apache/sshd/common/config/TimeValueConfig;
    :cond_1
    goto :goto_0

    .line 74
    .restart local v2    # "v":Lorg/apache/sshd/common/config/TimeValueConfig;
    :cond_2
    :goto_1
    return-object v2

    .line 78
    .end local v2    # "v":Lorg/apache/sshd/common/config/TimeValueConfig;
    :cond_3
    return-object v0

    .line 69
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Map;
    .locals 15
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/config/TimeValueConfig;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 100
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 105
    .local v0, "lastPos":I
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lorg/apache/sshd/common/config/TimeValueConfig;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 106
    .local v1, "spec":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/config/TimeValueConfig;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, "curPos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ", previous="

    const-string v5, ") negative count ("

    const-wide/16 v6, 0x0

    const-string v8, "parse("

    if-ge v2, v3, :cond_7

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 108
    .local v3, "ch":C
    const/16 v9, 0x30

    if-lt v3, v9, :cond_1

    const/16 v9, 0x39

    if-gt v3, v9, :cond_1

    .line 109
    goto :goto_1

    .line 112
    :cond_1
    if-le v2, v0, :cond_6

    .line 116
    invoke-static {v3}, Lorg/apache/sshd/common/config/TimeValueConfig;->fromValueChar(C)Lorg/apache/sshd/common/config/TimeValueConfig;

    move-result-object v9

    .line 117
    .local v9, "c":Lorg/apache/sshd/common/config/TimeValueConfig;
    if-eqz v9, :cond_5

    .line 121
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, "v":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 123
    .local v11, "count":J
    cmp-long v13, v11, v6

    if-ltz v13, :cond_4

    .line 127
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v1, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 128
    .local v13, "prev":Ljava/lang/Long;
    if-nez v13, :cond_3

    .line 132
    add-int/lit8 v0, v2, 0x1

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v0, v14, :cond_2

    .line 134
    goto/16 :goto_2

    .line 106
    .end local v3    # "ch":C
    .end local v9    # "c":Lorg/apache/sshd/common/config/TimeValueConfig;
    .end local v10    # "v":Ljava/lang/String;
    .end local v11    # "count":J
    .end local v13    # "prev":Ljava/lang/Long;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .restart local v3    # "ch":C
    .restart local v9    # "c":Lorg/apache/sshd/common/config/TimeValueConfig;
    .restart local v10    # "v":Ljava/lang/String;
    .restart local v11    # "count":J
    .restart local v13    # "prev":Ljava/lang/Long;
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v9}, Lorg/apache/sshd/common/config/TimeValueConfig;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value re-specified: current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 124
    .end local v13    # "prev":Ljava/lang/Long;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Lorg/apache/sshd/common/config/TimeValueConfig;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    .end local v10    # "v":Ljava/lang/String;
    .end local v11    # "count":J
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") unknown time value character: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    .end local v9    # "c":Lorg/apache/sshd/common/config/TimeValueConfig;
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") missing count value at index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    .end local v2    # "curPos":I
    .end local v3    # "ch":C
    :cond_7
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 139
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "v":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 141
    .local v9, "count":J
    cmp-long v3, v9, v6

    if-ltz v3, :cond_9

    .line 145
    sget-object v3, Lorg/apache/sshd/common/config/TimeValueConfig;->SECONDS:Lorg/apache/sshd/common/config/TimeValueConfig;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 146
    .local v5, "prev":Ljava/lang/Long;
    if-nez v5, :cond_8

    goto :goto_3

    .line 147
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") last component ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/sshd/common/config/TimeValueConfig;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ") value re-specified: current="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    .end local v5    # "prev":Ljava/lang/Long;
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for last component"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    .end local v2    # "v":Ljava/lang/String;
    .end local v9    # "count":J
    :cond_a
    :goto_3
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/config/TimeValueConfig;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/apache/sshd/common/config/TimeValueConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/TimeValueConfig;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/config/TimeValueConfig;
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/sshd/common/config/TimeValueConfig;->$VALUES:[Lorg/apache/sshd/common/config/TimeValueConfig;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/config/TimeValueConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/config/TimeValueConfig;

    return-object v0
.end method


# virtual methods
.method public final getInterval()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lorg/apache/sshd/common/config/TimeValueConfig;->interval:J

    return-wide v0
.end method

.method public final getLowerCaseValue()C
    .locals 1

    .line 56
    iget-char v0, p0, Lorg/apache/sshd/common/config/TimeValueConfig;->loChar:C

    return v0
.end method

.method public final getUpperCaseValue()C
    .locals 1

    .line 60
    iget-char v0, p0, Lorg/apache/sshd/common/config/TimeValueConfig;->hiChar:C

    return v0
.end method
