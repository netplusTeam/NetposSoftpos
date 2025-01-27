.class public abstract Lio/netty/util/internal/logging/AbstractInternalLogger;
.super Ljava/lang/Object;
.source "AbstractInternalLogger.java"

# interfaces
.implements Lio/netty/util/internal/logging/InternalLogger;
.implements Ljava/io/Serializable;


# static fields
.field static final EXCEPTION_MESSAGE:Ljava/lang/String; = "Unexpected exception:"

.field private static final serialVersionUID:J = -0x5894dfb1c97908feL


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/util/internal/logging/AbstractInternalLogger;->name:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 74
    const-string v0, "Unexpected exception:"

    invoke-virtual {p0, v0, p1}, Lio/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 89
    const-string v0, "Unexpected exception:"

    invoke-virtual {p0, v0, p1}, Lio/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 79
    const-string v0, "Unexpected exception:"

    invoke-virtual {p0, v0, p1}, Lio/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z
    .locals 2
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;

    .line 51
    sget-object v0, Lio/netty/util/internal/logging/AbstractInternalLogger$1;->$SwitchMap$io$netty$util$internal$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lio/netty/util/internal/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 63
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 61
    :pswitch_0
    invoke-virtual {p0}, Lio/netty/util/internal/logging/AbstractInternalLogger;->isErrorEnabled()Z

    move-result v0

    return v0

    .line 59
    :pswitch_1
    invoke-virtual {p0}, Lio/netty/util/internal/logging/AbstractInternalLogger;->isWarnEnabled()Z

    move-result v0

    return v0

    .line 57
    :pswitch_2
    invoke-virtual {p0}, Lio/netty/util/internal/logging/AbstractInternalLogger;->isInfoEnabled()Z

    move-result v0

    return v0

    .line 55
    :pswitch_3
    invoke-virtual {p0}, Lio/netty/util/internal/logging/AbstractInternalLogger;->isDebugEnabled()Z

    move-result v0

    return v0

    .line 53
    :pswitch_4
    invoke-virtual {p0}, Lio/netty/util/internal/logging/AbstractInternalLogger;->isTraceEnabled()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "msg"    # Ljava/lang/String;

    .line 140
    sget-object v0, Lio/netty/util/internal/logging/AbstractInternalLogger$1;->$SwitchMap$io$netty$util$internal$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lio/netty/util/internal/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 157
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 154
    :pswitch_0
    invoke-virtual {p0, p2}, Lio/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/String;)V

    .line 155
    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p0, p2}, Lio/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/String;)V

    .line 152
    goto :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {p0, p2}, Lio/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/String;)V

    .line 149
    goto :goto_0

    .line 145
    :pswitch_3
    invoke-virtual {p0, p2}, Lio/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/String;)V

    .line 146
    goto :goto_0

    .line 142
    :pswitch_4
    invoke-virtual {p0, p2}, Lio/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/String;)V

    .line 143
    nop

    .line 159
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 163
    sget-object v0, Lio/netty/util/internal/logging/AbstractInternalLogger$1;->$SwitchMap$io$netty$util$internal$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lio/netty/util/internal/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 180
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 177
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    goto :goto_0

    .line 174
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    goto :goto_0

    .line 171
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    goto :goto_0

    .line 168
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    goto :goto_0

    .line 165
    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    nop

    .line 182
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argA"    # Ljava/lang/Object;
    .param p4, "argB"    # Ljava/lang/Object;

    .line 186
    sget-object v0, Lio/netty/util/internal/logging/AbstractInternalLogger$1;->$SwitchMap$io$netty$util$internal$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lio/netty/util/internal/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 203
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 200
    :pswitch_0
    invoke-virtual {p0, p2, p3, p4}, Lio/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    goto :goto_0

    .line 197
    :pswitch_1
    invoke-virtual {p0, p2, p3, p4}, Lio/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    goto :goto_0

    .line 194
    :pswitch_2
    invoke-virtual {p0, p2, p3, p4}, Lio/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    goto :goto_0

    .line 191
    :pswitch_3
    invoke-virtual {p0, p2, p3, p4}, Lio/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    goto :goto_0

    .line 188
    :pswitch_4
    invoke-virtual {p0, p2, p3, p4}, Lio/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    nop

    .line 205
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 94
    sget-object v0, Lio/netty/util/internal/logging/AbstractInternalLogger$1;->$SwitchMap$io$netty$util$internal$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lio/netty/util/internal/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 108
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    goto :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    goto :goto_0

    .line 99
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    goto :goto_0

    .line 96
    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    nop

    .line 113
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .line 209
    sget-object v0, Lio/netty/util/internal/logging/AbstractInternalLogger$1;->$SwitchMap$io$netty$util$internal$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lio/netty/util/internal/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 226
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 223
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    goto :goto_0

    .line 220
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    goto :goto_0

    .line 217
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    goto :goto_0

    .line 214
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    goto :goto_0

    .line 211
    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    nop

    .line 228
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 117
    sget-object v0, Lio/netty/util/internal/logging/AbstractInternalLogger$1;->$SwitchMap$io$netty$util$internal$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lio/netty/util/internal/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 131
    :pswitch_0
    invoke-virtual {p0, p2}, Lio/netty/util/internal/logging/AbstractInternalLogger;->error(Ljava/lang/Throwable;)V

    .line 132
    goto :goto_0

    .line 128
    :pswitch_1
    invoke-virtual {p0, p2}, Lio/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/Throwable;)V

    .line 129
    goto :goto_0

    .line 125
    :pswitch_2
    invoke-virtual {p0, p2}, Lio/netty/util/internal/logging/AbstractInternalLogger;->info(Ljava/lang/Throwable;)V

    .line 126
    goto :goto_0

    .line 122
    :pswitch_3
    invoke-virtual {p0, p2}, Lio/netty/util/internal/logging/AbstractInternalLogger;->debug(Ljava/lang/Throwable;)V

    .line 123
    goto :goto_0

    .line 119
    :pswitch_4
    invoke-virtual {p0, p2}, Lio/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/Throwable;)V

    .line 120
    nop

    .line 136
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/netty/util/internal/logging/AbstractInternalLogger;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lio/netty/util/internal/logging/AbstractInternalLogger;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/util/internal/logging/AbstractInternalLogger;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 69
    const-string v0, "Unexpected exception:"

    invoke-virtual {p0, v0, p1}, Lio/netty/util/internal/logging/AbstractInternalLogger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 84
    const-string v0, "Unexpected exception:"

    invoke-virtual {p0, v0, p1}, Lio/netty/util/internal/logging/AbstractInternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method
