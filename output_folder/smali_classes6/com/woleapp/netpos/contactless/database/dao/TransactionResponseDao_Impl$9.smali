.class synthetic Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$9;
.super Ljava/lang/Object;
.source "TransactionResponseDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$danbamitale$epmslib$entities$PosMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1480
    invoke-static {}, Lcom/danbamitale/epmslib/entities/PosMode;->values()[Lcom/danbamitale/epmslib/entities/PosMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$9;->$SwitchMap$com$danbamitale$epmslib$entities$PosMode:[I

    :try_start_0
    sget-object v1, Lcom/danbamitale/epmslib/entities/PosMode;->EPMS:Lcom/danbamitale/epmslib/entities/PosMode;

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/PosMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$9;->$SwitchMap$com$danbamitale$epmslib$entities$PosMode:[I

    sget-object v1, Lcom/danbamitale/epmslib/entities/PosMode;->POSVAS:Lcom/danbamitale/epmslib/entities/PosMode;

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/PosMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$9;->$SwitchMap$com$danbamitale$epmslib$entities$PosMode:[I

    sget-object v1, Lcom/danbamitale/epmslib/entities/PosMode;->ISW:Lcom/danbamitale/epmslib/entities/PosMode;

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/PosMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
