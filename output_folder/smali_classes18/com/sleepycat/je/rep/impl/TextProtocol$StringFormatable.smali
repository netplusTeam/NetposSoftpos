.class public Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;
.super Ljava/lang/Object;
.source "TextProtocol.java"

# interfaces
.implements Lcom/sleepycat/je/rep/impl/TextProtocol$WireFormatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/TextProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StringFormatable"
.end annotation


# instance fields
.field protected s:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;->s:Ljava/lang/String;

    .line 1147
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1165
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1166
    return v0

    .line 1168
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1169
    return v1

    .line 1171
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;

    if-nez v2, :cond_2

    .line 1172
    return v1

    .line 1175
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;

    .line 1176
    .local v2, "other":Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;->s:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1177
    iget-object v3, v2, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;->s:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1178
    return v1

    .line 1180
    :cond_3
    iget-object v4, v2, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1181
    return v1

    .line 1183
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0
    .param p1, "wireFormat"    # Ljava/lang/String;

    .line 1150
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;->s:Ljava/lang/String;

    .line 1151
    return-void
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;->s:Ljava/lang/String;

    return-object v0
.end method
