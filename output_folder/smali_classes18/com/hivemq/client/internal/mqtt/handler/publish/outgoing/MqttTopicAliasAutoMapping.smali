.class public Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;
.super Ljava/lang/Object;
.source "MqttTopicAliasAutoMapping.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/Index$Spec<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OVERSIZE:B = 0x4t

.field private static final OVERWRITE_COST_INC:B = 0x2t

.field private static final OVERWRITE_COST_MAX:B = 0x7et

.field private static final OVERWRITE_COST_MIN:B = 0x2t

.field private static final RETAIN:B = 0x8t


# instance fields
.field private accessCounter:J

.field private fullOverwriteCost:B

.field private fullOverwriteTries:B

.field private lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

.field private final map:Lcom/hivemq/client/internal/util/collections/Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/Index<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private overwriteCost:B

.field private overwriteTries:B

.field private final topicAliasMaximum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    nop

    .line 36
    new-instance v0, Lcom/hivemq/client/internal/util/collections/Index$Spec;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/Index$Spec;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "topicAliasMaximum"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/hivemq/client/internal/util/collections/Index;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/Index;-><init>(Lcom/hivemq/client/internal/util/collections/Index$Spec;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    .line 43
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteCost:B

    .line 45
    iput-byte v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteCost:B

    .line 48
    iput p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->topicAliasMaximum:I

    .line 49
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "entry"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 36
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topic:Ljava/lang/String;

    return-object v0
.end method

.method private swapNewer(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;J)V
    .locals 10
    .param p1, "entry"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    .param p2, "accessCounter"    # J

    .line 121
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 122
    .local v0, "higher":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    if-nez v1, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 126
    .local v1, "lower":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    invoke-virtual {p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->priority(J)J

    move-result-wide v2

    .line 128
    .local v2, "priority":J
    :goto_0
    invoke-virtual {v0, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->priority(J)J

    move-result-wide v4

    .line 129
    .local v4, "newerPriority":J
    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    .line 130
    goto :goto_2

    .line 132
    :cond_1
    iget v6, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    if-nez v6, :cond_4

    iget v6, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    if-eqz v6, :cond_4

    .line 133
    iget-byte v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteTries:B

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    iput-byte v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteTries:B

    iget-byte v7, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteCost:B

    if-ge v6, v7, :cond_2

    .line 134
    goto :goto_2

    .line 136
    :cond_2
    const/4 v6, 0x0

    iput-byte v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteTries:B

    .line 137
    const/16 v8, 0x7e

    if-ge v7, v8, :cond_3

    .line 138
    const/4 v8, 0x2

    rsub-int/lit8 v9, v7, 0x7e

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-byte v8, v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteCost:B

    .line 140
    :cond_3
    iget v7, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    invoke-virtual {p1, v7}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->setNewTopicAlias(I)V

    .line 141
    iput v6, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    .line 143
    :cond_4
    iget-object v6, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 144
    .local v6, "higherHigher":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    iput-object p1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 145
    iput-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 146
    const/4 v7, 0x0

    if-nez v1, :cond_5

    .line 147
    iput-object v7, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 148
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    goto :goto_1

    .line 150
    :cond_5
    iput-object v0, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 151
    iput-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 153
    :goto_1
    if-nez v6, :cond_6

    .line 154
    iput-object v7, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 155
    nop

    .line 163
    .end local v4    # "newerPriority":J
    .end local v6    # "higherHigher":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    :goto_2
    return-void

    .line 157
    .restart local v4    # "newerPriority":J
    .restart local v6    # "higherHigher":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    :cond_6
    iput-object v6, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 158
    iput-object p1, v6, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 160
    move-object v1, v0

    .line 161
    move-object v0, v6

    .line 162
    .end local v4    # "newerPriority":J
    .end local v6    # "higherHigher":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    goto :goto_0
.end method


# virtual methods
.method public getTopicAliasMaximum()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->topicAliasMaximum:I

    return v0
.end method

.method public onPublish(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)I
    .locals 12
    .param p1, "topic"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 58
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->accessCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->accessCounter:J

    .line 59
    .local v0, "accessCounter":J
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "topicString":Ljava/lang/String;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v3, v2}, Lcom/hivemq/client/internal/util/collections/Index;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 61
    .local v3, "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 62
    invoke-virtual {v3, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->access(J)V

    .line 63
    iget v6, v3, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    if-eqz v6, :cond_3

    .line 64
    iget-byte v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteCost:B

    if-le v6, v4, :cond_0

    .line 65
    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    iput-byte v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteCost:B

    .line 67
    :cond_0
    iget-byte v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteCost:B

    if-le v6, v4, :cond_1

    .line 68
    add-int/lit8 v6, v6, -0x1

    int-to-byte v4, v6

    iput-byte v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteCost:B

    .line 70
    :cond_1
    iget-object v4, v3, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    if-eqz v4, :cond_2

    .line 71
    iget-object v4, v3, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    iget v4, v4, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    if-nez v4, :cond_3

    .line 72
    iput-byte v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->overwriteTries:B

    goto :goto_0

    .line 75
    :cond_2
    iput-byte v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteTries:B

    .line 78
    :cond_3
    :goto_0
    invoke-direct {p0, v3, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->swapNewer(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;J)V

    .line 79
    iget v4, v3, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    return v4

    .line 81
    :cond_4
    new-instance v6, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    invoke-direct {v6, v2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;-><init>(Ljava/lang/String;J)V

    .line 82
    .local v6, "newEntry":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    iget-object v7, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v7}, Lcom/hivemq/client/internal/util/collections/Index;->size()I

    move-result v7

    iget v8, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->topicAliasMaximum:I

    add-int/lit8 v8, v8, 0x4

    if-ge v7, v8, :cond_6

    .line 83
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v4}, Lcom/hivemq/client/internal/util/collections/Index;->size()I

    move-result v4

    iget v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->topicAliasMaximum:I

    if-ge v4, v5, :cond_5

    .line 84
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v4}, Lcom/hivemq/client/internal/util/collections/Index;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->setNewTopicAlias(I)V

    .line 86
    :cond_5
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v4, v6}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    if-eqz v4, :cond_b

    .line 88
    iput-object v4, v6, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 89
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    iput-object v6, v4, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    goto :goto_1

    .line 92
    :cond_6
    iget-object v7, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 93
    .local v7, "lowest":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    if-eqz v7, :cond_c

    .line 94
    invoke-virtual {v6, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->priority(J)J

    move-result-wide v8

    invoke-virtual {v7, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->priority(J)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_7

    .line 95
    return v5

    .line 97
    :cond_7
    iget-byte v8, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteTries:B

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    iput-byte v8, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteTries:B

    iget-byte v9, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteCost:B

    if-ge v8, v9, :cond_8

    .line 98
    return v5

    .line 100
    :cond_8
    iput-byte v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteTries:B

    .line 101
    const/16 v5, 0x7e

    if-ge v9, v5, :cond_9

    .line 102
    rsub-int/lit8 v5, v9, 0x7e

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-byte v4, v4

    add-int/2addr v9, v4

    int-to-byte v4, v9

    iput-byte v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->fullOverwriteCost:B

    .line 104
    :cond_9
    iget v4, v7, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    if-eqz v4, :cond_a

    .line 105
    iget v4, v7, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    invoke-virtual {v6, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->setNewTopicAlias(I)V

    .line 107
    :cond_a
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    iget-object v5, v7, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topic:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/hivemq/client/internal/util/collections/Index;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->map:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v4, v6}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v4, v7, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 110
    .local v4, "higher":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    iput-object v4, v6, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 111
    if-eqz v4, :cond_b

    .line 112
    iput-object v6, v4, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->lower:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 115
    .end local v4    # "higher":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    .end local v7    # "lowest":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    :cond_b
    :goto_1
    iput-object v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 116
    invoke-direct {p0, v6, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->swapNewer(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;J)V

    .line 117
    iget v4, v6, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->topicAlias:I

    return v4

    .line 93
    .restart local v7    # "lowest":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    :cond_c
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->lowest:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    .line 169
    .local v1, "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;
    :goto_0
    if-eqz v1, :cond_0

    .line 170
    const-string v2, "\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;->higher:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    goto :goto_0

    .line 173
    :cond_0
    const-string v2, "\n}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
