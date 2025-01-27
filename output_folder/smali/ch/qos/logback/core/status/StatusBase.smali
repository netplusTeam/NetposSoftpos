.class public abstract Lch/qos/logback/core/status/StatusBase;
.super Ljava/lang/Object;
.source "StatusBase.java"

# interfaces
.implements Lch/qos/logback/core/status/Status;


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/status/Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field childrenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/status/Status;",
            ">;"
        }
    .end annotation
.end field

.field date:J

.field level:I

.field final message:Ljava/lang/String;

.field final origin:Ljava/lang/Object;

.field throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lch/qos/logback/core/status/StatusBase;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "origin"    # Ljava/lang/Object;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lch/qos/logback/core/status/StatusBase;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "origin"    # Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lch/qos/logback/core/status/StatusBase;->level:I

    .line 37
    iput-object p2, p0, Lch/qos/logback/core/status/StatusBase;->message:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lch/qos/logback/core/status/StatusBase;->origin:Ljava/lang/Object;

    .line 39
    iput-object p4, p0, Lch/qos/logback/core/status/StatusBase;->throwable:Ljava/lang/Throwable;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/qos/logback/core/status/StatusBase;->date:J

    .line 41
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lch/qos/logback/core/status/Status;)V
    .locals 2
    .param p1, "child"    # Lch/qos/logback/core/status/Status;

    monitor-enter p0

    .line 44
    if-eqz p1, :cond_1

    .line 47
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/status/StatusBase;->childrenList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/status/StatusBase;->childrenList:Ljava/util/List;

    .line 50
    .end local p0    # "this":Lch/qos/logback/core/status/StatusBase;
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/status/StatusBase;->childrenList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 43
    .end local p1    # "child":Lch/qos/logback/core/status/Status;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 45
    .restart local p1    # "child":Lch/qos/logback/core/status/Status;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null values are not valid Status."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .end local p1    # "child":Lch/qos/logback/core/status/Status;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 157
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 158
    return v0

    .line 159
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 160
    return v1

    .line 161
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 162
    return v1

    .line 163
    :cond_2
    move-object v2, p1

    check-cast v2, Lch/qos/logback/core/status/StatusBase;

    .line 164
    .local v2, "other":Lch/qos/logback/core/status/StatusBase;
    iget v3, p0, Lch/qos/logback/core/status/StatusBase;->level:I

    iget v4, v2, Lch/qos/logback/core/status/StatusBase;->level:I

    if-eq v3, v4, :cond_3

    .line 165
    return v1

    .line 166
    :cond_3
    iget-object v3, p0, Lch/qos/logback/core/status/StatusBase;->message:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 167
    iget-object v3, v2, Lch/qos/logback/core/status/StatusBase;->message:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 168
    return v1

    .line 169
    :cond_4
    iget-object v4, v2, Lch/qos/logback/core/status/StatusBase;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 170
    return v1

    .line 171
    :cond_5
    return v0
.end method

.method public getDate()Ljava/lang/Long;
    .locals 2

    .line 110
    iget-wide v0, p0, Lch/qos/logback/core/status/StatusBase;->date:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getEffectiveLevel()I
    .locals 4

    monitor-enter p0

    .line 82
    :try_start_0
    iget v0, p0, Lch/qos/logback/core/status/StatusBase;->level:I

    .line 85
    .local v0, "result":I
    invoke-virtual {p0}, Lch/qos/logback/core/status/StatusBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 87
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lch/qos/logback/core/status/Status;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/status/Status;

    .line 89
    .local v2, "s":Lch/qos/logback/core/status/Status;
    invoke-interface {v2}, Lch/qos/logback/core/status/Status;->getEffectiveLevel()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .local v3, "effLevel":I
    if-le v3, v0, :cond_0

    .line 91
    move v0, v3

    goto :goto_0

    .line 94
    .end local v2    # "s":Lch/qos/logback/core/status/Status;
    .end local v3    # "effLevel":I
    .end local p0    # "this":Lch/qos/logback/core/status/StatusBase;
    :cond_1
    monitor-exit p0

    return v0

    .line 81
    .end local v0    # "result":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lch/qos/logback/core/status/Status;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLevel()I
    .locals 1

    .line 74
    iget v0, p0, Lch/qos/logback/core/status/StatusBase;->level:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lch/qos/logback/core/status/StatusBase;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/Object;
    .locals 1

    .line 102
    iget-object v0, p0, Lch/qos/logback/core/status/StatusBase;->origin:Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 106
    iget-object v0, p0, Lch/qos/logback/core/status/StatusBase;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public declared-synchronized hasChildren()Z
    .locals 1

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/status/StatusBase;->childrenList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lch/qos/logback/core/status/StatusBase;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 4

    .line 148
    const/16 v0, 0x1f

    .line 149
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 150
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lch/qos/logback/core/status/StatusBase;->level:I

    add-int/2addr v2, v3

    .line 151
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lch/qos/logback/core/status/StatusBase;->message:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    .line 152
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lch/qos/logback/core/status/Status;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/status/StatusBase;->childrenList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 61
    .end local p0    # "this":Lch/qos/logback/core/status/StatusBase;
    :cond_0
    :try_start_1
    sget-object v0, Lch/qos/logback/core/status/StatusBase;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lch/qos/logback/core/status/Status;)Z
    .locals 1
    .param p1, "statusToRemove"    # Lch/qos/logback/core/status/Status;

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/status/StatusBase;->childrenList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 70
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 65
    .end local p0    # "this":Lch/qos/logback/core/status/StatusBase;
    .end local p1    # "statusToRemove":Lch/qos/logback/core/status/Status;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lch/qos/logback/core/status/StatusBase;->getEffectiveLevel()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 123
    :pswitch_1
    const-string v1, "WARN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    goto :goto_0

    .line 120
    :pswitch_2
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    nop

    .line 129
    :goto_0
    iget-object v1, p0, Lch/qos/logback/core/status/StatusBase;->origin:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 130
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lch/qos/logback/core/status/StatusBase;->origin:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, " -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v2, p0, Lch/qos/logback/core/status/StatusBase;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v2, p0, Lch/qos/logback/core/status/StatusBase;->throwable:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lch/qos/logback/core/status/StatusBase;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
