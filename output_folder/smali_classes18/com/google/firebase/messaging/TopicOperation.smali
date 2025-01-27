.class final Lcom/google/firebase/messaging/TopicOperation;
.super Ljava/lang/Object;
.source "TopicOperation.java"


# static fields
.field private static final OLD_TOPIC_PREFIX:Ljava/lang/String; = "/topics/"

.field static final OPERATION_PAIR_DIVIDER:Ljava/lang/String; = "!"

.field private static final TOPIC_NAME_PATTERN:Ljava/lang/String; = "[a-zA-Z0-9-_.~%]{1,900}"

.field private static final TOPIC_NAME_REGEXP:Ljava/util/regex/Pattern;


# instance fields
.field private final operation:Ljava/lang/String;

.field private final serializedString:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "[a-zA-Z0-9-_.~%]{1,900}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/TopicOperation;->TOPIC_NAME_REGEXP:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "topic"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p2, p1}, Lcom/google/firebase/messaging/TopicOperation;->normalizeTopicOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/TopicOperation;->topic:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/google/firebase/messaging/TopicOperation;->operation:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/TopicOperation;->serializedString:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static from(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;
    .locals 4
    .param p0, "entry"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    return-object v1

    .line 87
    :cond_0
    const/4 v0, -0x1

    const-string v2, "!"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "splits":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 89
    return-object v1

    .line 92
    :cond_1
    new-instance v1, Lcom/google/firebase/messaging/TopicOperation;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/messaging/TopicOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static normalizeTopicOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "topic"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, "/topics/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 56
    const-string v4, "Format /topics/topic-name is deprecated. Only \'topic-name\' should be used in %s."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 54
    const-string v4, "FirebaseMessaging"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 63
    :cond_0
    if-eqz p0, :cond_1

    sget-object v2, Lcom/google/firebase/messaging/TopicOperation;->TOPIC_NAME_REGEXP:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    return-object p0

    .line 64
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const-string v1, "[a-zA-Z0-9-_.~%]{1,900}"

    aput-object v1, v3, v0

    .line 65
    const-string v0, "Invalid topic name: %s does not match the allowed format %s."

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static subscribe(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;
    .locals 2
    .param p0, "topic"    # Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/google/firebase/messaging/TopicOperation;

    const-string v1, "S"

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/messaging/TopicOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static unsubscribe(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;
    .locals 2
    .param p0, "topic"    # Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/google/firebase/messaging/TopicOperation;

    const-string v1, "U"

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/messaging/TopicOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 109
    instance-of v0, p1, Lcom/google/firebase/messaging/TopicOperation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    return v1

    .line 112
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/messaging/TopicOperation;

    .line 113
    .local v0, "that":Lcom/google/firebase/messaging/TopicOperation;
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicOperation;->topic:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/firebase/messaging/TopicOperation;->topic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/messaging/TopicOperation;->operation:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/firebase/messaging/TopicOperation;->operation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicOperation;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicOperation;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/messaging/TopicOperation;->operation:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/messaging/TopicOperation;->topic:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicOperation;->serializedString:Ljava/lang/String;

    return-object v0
.end method
