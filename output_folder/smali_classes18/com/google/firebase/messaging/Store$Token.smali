.class Lcom/google/firebase/messaging/Store$Token;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# static fields
.field private static final KEY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final REFRESH_PERIOD_MILLIS:J


# instance fields
.field final appVersion:Ljava/lang/String;

.field final timestamp:J

.field final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 132
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/Store$Token;->REFRESH_PERIOD_MILLIS:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/google/firebase/messaging/Store$Token;->token:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/google/firebase/messaging/Store$Token;->appVersion:Ljava/lang/String;

    .line 142
    iput-wide p3, p0, Lcom/google/firebase/messaging/Store$Token;->timestamp:J

    .line 143
    return-void
.end method

.method static encode(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "appVersion"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 169
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 170
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v1, "appVersion"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 173
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 174
    .end local v0    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to encode token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseMessaging"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x0

    return-object v1
.end method

.method static parse(Ljava/lang/String;)Lcom/google/firebase/messaging/Store$Token;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    return-object v1

    .line 149
    :cond_0
    const-string/jumbo v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "json":Lorg/json/JSONObject;
    new-instance v2, Lcom/google/firebase/messaging/Store$Token;

    const-string/jumbo v3, "token"

    .line 154
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "appVersion"

    .line 155
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "timestamp"

    .line 156
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/firebase/messaging/Store$Token;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-object v2

    .line 157
    .end local v0    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FirebaseMessaging"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-object v1

    .line 163
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v0, Lcom/google/firebase/messaging/Store$Token;

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/firebase/messaging/Store$Token;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method needsRefresh(Ljava/lang/String;)Z
    .locals 6
    .param p1, "appVersion"    # Ljava/lang/String;

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/messaging/Store$Token;->timestamp:J

    sget-wide v4, Lcom/google/firebase/messaging/Store$Token;->REFRESH_PERIOD_MILLIS:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/messaging/Store$Token;->appVersion:Ljava/lang/String;

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 189
    :goto_1
    return v0
.end method
