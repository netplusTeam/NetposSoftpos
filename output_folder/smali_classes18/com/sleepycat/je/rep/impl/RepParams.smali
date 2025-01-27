.class public Lcom/sleepycat/je/rep/impl/RepParams;
.super Ljava/lang/Object;
.source "RepParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/RepParams$ChannelTypeConfigParam;,
        Lcom/sleepycat/je/rep/impl/RepParams$IdentifierConfigParam;
    }
.end annotation


# static fields
.field public static final ALLOW_ARBITER_ACK:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ALLOW_UNKNOWN_STATE_ENV_OPEN:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ARBITER_ACK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ARBITER_OUTPUT_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final ARBITER_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final BIND_INADDR_ANY:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CACHE_RECORD_VERSION:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CHANNEL_FACTORY_CLASS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final CHANNEL_FACTORY_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final CHANNEL_LOG_NAME:Lcom/sleepycat/je/config/ConfigParam;

.field public static final CHANNEL_TYPE:Lcom/sleepycat/je/config/ConfigParam;

.field public static final COMMIT_TO_NETWORK:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final CONSISTENCY_POLICY:Lcom/sleepycat/je/config/ConfigParam;

.field public static final DBTREE_CACHE_CLEAR_COUNT:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final DEFAULT_PORT:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final DESIGNATED_PRIMARY:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final DONT_JOIN_REP_GROUP:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ELECTABLE_GROUP_SIZE_OVERRIDE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final ELECTIONS_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ELECTIONS_PRIMARY_RETRIES:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final ELECTIONS_READ_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ELECTIONS_REBROADCAST_PERIOD:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ENABLE_GROUP_ACKS:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final ENV_CONSISTENCY_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ENV_SETUP_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final ENV_UNKNOWN_STATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final FEEDER_BATCH_BUFF_KB:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final FEEDER_BATCH_NS:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final FEEDER_MANAGER_POLL_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final FEEDER_TCP_NO_DELAY:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final FEEDER_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

.field public static final HEARTBEAT_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final HELPER_HOSTS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final IGNORE_SECONDARY_NODE_ID:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final INSUFFICIENT_REPLICAS_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final MAX_CLOCK_DELTA:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final MAX_MESSAGE_SIZE:Lcom/sleepycat/je/config/LongConfigParam;

.field public static final MIN_RETAINED_VLSNS:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final MIN_VLSN_INDEX_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final MONITOR_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final MONITOR_READ_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final NETWORKBACKUP_MAX_LAG:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final NETWORKBACKUP_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

.field public static final NODE_NAME:Lcom/sleepycat/je/config/ConfigParam;

.field public static final NODE_PRIORITY:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final NODE_TYPE:Lcom/sleepycat/je/rep/impl/EnumConfigParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/rep/impl/EnumConfigParam<",
            "Lcom/sleepycat/je/rep/NodeType;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRESERVE_RECORD_VERSION:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final PRE_HEARTBEAT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final PROTOCOL_OLD_STRING_ENCODING:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final REPLAY_COST_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final REPLAY_DB_HANDLE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final REPLAY_FREE_DISK_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final REPLAY_LOGGING_THRESHOLD:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final REPLAY_MAX_OPEN_DB_HANDLES:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final REPLAY_TXN_LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final REPLICA_ACK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final REPLICA_GROUP_COMMIT_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final REPLICA_MAX_GROUP_COMMIT:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final REPLICA_MESSAGE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final REPLICA_RECEIVE_BUFFER_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final REPLICA_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final REPSTREAM_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final REP_GROUP_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final REP_GROUP_READ_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final REP_STREAM_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final RESET_REP_GROUP:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final RESET_REP_GROUP_RETAIN_UUID:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final SECURITY_CHECK_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final SKIP_HELPER_HOST_RESOLUTION:Ljava/lang/String; = "je.rep.skipHelperHostResolution"

.field public static final SKIP_NODENAME_VALIDATION:Ljava/lang/String; = "je.rep.skipNodenameValidation"

.field public static final SO_BIND_WAIT_MS:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final SO_REUSEADDR:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final SSL_AUTHENTICATOR:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_AUTHENTICATOR_CLASS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_AUTHENTICATOR_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_CIPHER_SUITES:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_CLIENT_KEY_ALIAS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_HOST_VERIFIER:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_HOST_VERIFIER_CLASS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_HOST_VERIFIER_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_KEYSTORE_FILE:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_KEYSTORE_PASSWORD:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_KEYSTORE_PASSWORD_CLASS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_KEYSTORE_PASSWORD_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_KEYSTORE_TYPE:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_PROTOCOLS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_SERVER_KEY_ALIAS:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_TRUSTSTORE_FILE:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SSL_TRUSTSTORE_TYPE:Lcom/sleepycat/je/config/ConfigParam;

.field public static final SUBSCRIBER_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final SUBSCRIPTION_MAX_CONNECT_RETRIES:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final SUBSCRIPTION_POLL_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final SUBSCRIPTION_POLL_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final SUBSCRIPTION_SLEEP_BEFORE_RETRY:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final TEST_CBVLSN:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final TEST_JE_VERSION:Lcom/sleepycat/je/config/ConfigParam;

.field public static final TEST_REPLICA_DELAY:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final TRANSFER_LOGGING_THRESHOLD:Lcom/sleepycat/je/config/DurationConfigParam;

.field public static final TXN_ROLLBACK_DISABLED:Lcom/sleepycat/je/config/BooleanConfigParam;

.field public static final TXN_ROLLBACK_LIMIT:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final VLSN_LOG_CACHE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final VLSN_MAX_DIST:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final VLSN_MAX_MAP:Lcom/sleepycat/je/config/IntConfigParam;

.field public static final VLSN_STRIDE:Lcom/sleepycat/je/config/IntConfigParam;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 136
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepParams$IdentifierConfigParam;

    const-string v1, "je.rep.groupName"

    const-string v2, "DefaultGroup"

    const/4 v3, 0x0

    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 136
    const/4 v12, 0x1

    .line 238
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 136
    invoke-direct {v0, v1, v2, v3, v12}, Lcom/sleepycat/je/rep/impl/RepParams$IdentifierConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    .line 145
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v5, "je.rep.repStreamTimeout"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "30 min"

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REP_STREAM_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 165
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 168
    nop

    .line 170
    const-string v5, "je.rep.minRetainedVLSNs"

    move-object v4, v0

    move-object v6, v11

    move-object v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->MIN_RETAINED_VLSNS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 188
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 191
    nop

    .line 193
    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "je.rep.minVLSNIndexSize"

    move-object v4, v0

    move-object v8, v1

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->MIN_VLSN_INDEX_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 201
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.testCBVLSN"

    invoke-direct {v0, v2, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->TEST_CBVLSN:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 211
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 213
    nop

    .line 215
    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "je.rep.replicaReceiveBufferSize"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_RECEIVE_BUFFER_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 235
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 238
    nop

    .line 240
    const-string v5, "je.rep.replicaMessageQueueSize"

    const/4 v9, 0x1

    move-object v4, v0

    move-object v6, v13

    move-object v8, v1

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_MESSAGE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 247
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v15, "je.rep.replayTxnLockTimeout"

    const-string v16, "1 ms"

    const-string v17, "75 min"

    const-string v18, "500 ms"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_TXN_LOCK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 258
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v5, "je.rep.envSetupTimeout"

    const/4 v6, 0x0

    const-string v8, "10 h"

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ENV_SETUP_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 271
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v15, "je.rep.envConsistencyTimeout"

    const-string v16, "10 ms"

    const/16 v17, 0x0

    const-string v18, "5 min"

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ENV_CONSISTENCY_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 282
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v5, "je.rep.envUnknownStateTimeout"

    const-string v8, "0 s"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ENV_UNKNOWN_STATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 294
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v15, "je.rep.replicaAckTimeout"

    const-string v16, "10 ms"

    const-string v18, "5 s"

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_ACK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 305
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v5, "je.rep.insufficientReplicasTimeout"

    const-string v6, "10 ms"

    const-string v8, "10 s"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->INSUFFICIENT_REPLICAS_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 317
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v15, "je.rep.arbiterAckTimeout"

    const-string v16, "10 ms"

    const-string v18, "2 s"

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ARBITER_ACK_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 329
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.enableGroupAcks"

    invoke-direct {v0, v2, v12, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ENABLE_GROUP_ACKS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 346
    new-instance v0, Lcom/sleepycat/je/config/LongConfigParam;

    .line 348
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 349
    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 350
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v5, "je.rep.maxMessageSize"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/LongConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->MAX_MESSAGE_SIZE:Lcom/sleepycat/je/config/LongConfigParam;

    .line 364
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepParams$1;

    const-string v2, "je.rep.consistencyPolicy"

    const-string v4, "TimeConsistencyPolicy(1 s,1 h)"

    invoke-direct {v0, v2, v4, v3, v12}, Lcom/sleepycat/je/rep/impl/RepParams$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->CONSISTENCY_POLICY:Lcom/sleepycat/je/config/ConfigParam;

    .line 384
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 386
    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 387
    const/16 v4, 0x7fff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 388
    const/16 v4, 0x1389

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v15, "je.rep.defaultPort"

    move-object v14, v0

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v20}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->DEFAULT_PORT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 396
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepParams$2;

    const-string v4, "je.rep.nodeHostPort"

    const-string v5, "localhost"

    invoke-direct {v0, v4, v5, v3, v12}, Lcom/sleepycat/je/rep/impl/RepParams$2;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    .line 444
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepParams$IdentifierConfigParam;

    const-string v4, "je.rep.nodeName"

    const-string v5, "DefaultRepNodeName"

    invoke-direct {v0, v4, v5, v3, v12}, Lcom/sleepycat/je/rep/impl/RepParams$IdentifierConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_NAME:Lcom/sleepycat/je/config/ConfigParam;

    .line 453
    new-instance v0, Lcom/sleepycat/je/rep/impl/EnumConfigParam;

    sget-object v16, Lcom/sleepycat/je/rep/NodeType;->ELECTABLE:Lcom/sleepycat/je/rep/NodeType;

    const-class v19, Lcom/sleepycat/je/rep/NodeType;

    const-string v15, "je.rep.nodeType"

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/sleepycat/je/rep/impl/EnumConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Enum;ZZLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_TYPE:Lcom/sleepycat/je/rep/impl/EnumConfigParam;

    .line 466
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 468
    nop

    .line 469
    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 470
    const-string v5, "je.rep.node.priority"

    const/4 v9, 0x1

    move-object v4, v0

    move-object v6, v11

    move-object/from16 v7, v21

    move-object v8, v13

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_PRIORITY:Lcom/sleepycat/je/config/IntConfigParam;

    .line 477
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v4, "je.rep.allowArbiterAck"

    invoke-direct {v0, v4, v12, v12, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ALLOW_ARBITER_ACK:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 483
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 485
    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 487
    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v15, "je.rep.arbiterOutputQueueSize"

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ARBITER_OUTPUT_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 494
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v4, "je.rep.designatedPrimary"

    invoke-direct {v0, v4, v3, v12, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->DESIGNATED_PRIMARY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 505
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v4, "je.rep.feederTcpNoDelay"

    invoke-direct {v0, v4, v12, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_TCP_NO_DELAY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 526
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 529
    nop

    .line 530
    nop

    .line 531
    const v4, 0xf4240

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "je.rep.feederBatchNs"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_BATCH_NS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 541
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 544
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 545
    nop

    .line 546
    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v15, "je.rep.feederBatchBuffKb"

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v14, v0

    move-object/from16 v17, v21

    invoke-direct/range {v14 .. v20}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_BATCH_BUFF_KB:Lcom/sleepycat/je/config/IntConfigParam;

    .line 553
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 556
    nop

    .line 557
    nop

    .line 558
    const-string v5, "je.rep.electableGroupSizeOverride"

    move-object v4, v0

    move-object v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ELECTABLE_GROUP_SIZE_OVERRIDE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 567
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v4, "je.rep.resetRepGroup"

    invoke-direct {v0, v4, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->RESET_REP_GROUP:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 580
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v4, "je.rep.resetRepGroupRetainUUID"

    invoke-direct {v0, v4, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->RESET_REP_GROUP_RETAIN_UUID:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 592
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v4, "je.rep.ignoreSecondaryNodeId"

    invoke-direct {v0, v4, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->IGNORE_SECONDARY_NODE_ID:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 604
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v15, "je.rep.maxClockDelta"

    const/16 v16, 0x0

    const-string v17, "1 min"

    const-string v18, "2 s"

    const/16 v19, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->MAX_CLOCK_DELTA:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 615
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepParams$3;

    const-string v4, "je.rep.helperHosts"

    const-string v14, ""

    invoke-direct {v0, v4, v14, v12, v12}, Lcom/sleepycat/je/rep/impl/RepParams$3;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->HELPER_HOSTS:Lcom/sleepycat/je/config/ConfigParam;

    .line 652
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 655
    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 657
    const-string v5, "je.rep.heartbeatInterval"

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v8, v1

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->HEARTBEAT_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

    .line 666
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 669
    nop

    .line 671
    const-string v5, "je.rep.securityCheckInterval"

    move-object v4, v0

    move-object v6, v13

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SECURITY_CHECK_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

    .line 676
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 679
    nop

    .line 681
    const/16 v4, 0x1388

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "je.rep.dbIdCacheOpCount"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->DBTREE_CACHE_CLEAR_COUNT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 685
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 687
    nop

    .line 689
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v5, "je.rep.vlsn.stride"

    move-object v4, v0

    move-object v8, v15

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->VLSN_STRIDE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 693
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 696
    nop

    .line 698
    const-string v5, "je.rep.vlsn.mappings"

    move-object v4, v0

    move-object v8, v1

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->VLSN_MAX_MAP:Lcom/sleepycat/je/config/IntConfigParam;

    .line 702
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 705
    nop

    .line 707
    const v4, 0x186a0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "je.rep.vlsn.distance"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->VLSN_MAX_DIST:Lcom/sleepycat/je/config/IntConfigParam;

    .line 715
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 718
    nop

    .line 719
    nop

    .line 720
    const-string v5, "je.rep.test.replicaDelay"

    move-object v4, v0

    move-object v6, v11

    move-object/from16 v7, v21

    move-object v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->TEST_REPLICA_DELAY:Lcom/sleepycat/je/config/IntConfigParam;

    .line 728
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 731
    nop

    .line 732
    nop

    .line 733
    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "je.rep.vlsn.logCacheSize"

    move-object v4, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->VLSN_LOG_CACHE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 741
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v23, "je.rep.repstreamOpenTimeout"

    const/16 v24, 0x0

    const-string v25, "5 min"

    const-string v26, "5 s"

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPSTREAM_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 754
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v5, "je.rep.electionsOpenTimeout"

    const/4 v6, 0x0

    const-string v7, "1 min"

    const-string v8, "10 s"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ELECTIONS_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 768
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v23, "je.rep.electionsReadTimeout"

    const-string v25, "1 min"

    const-string v26, "10 s"

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ELECTIONS_READ_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 781
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v5, "je.rep.electionsRebroadcastPeriod"

    const/4 v7, 0x0

    const-string v8, "1 min"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ELECTIONS_REBROADCAST_PERIOD:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 793
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 795
    nop

    .line 796
    nop

    .line 797
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "je.rep.electionsPrimaryRetries"

    move-object v4, v0

    move-object v6, v11

    move-object/from16 v7, v21

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ELECTIONS_PRIMARY_RETRIES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 804
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v23, "je.rep.repGroupOpenTimeout"

    const-string v25, "1 min"

    const-string v26, "10 s"

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REP_GROUP_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 816
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v5, "je.rep.repGroupReadTimeout"

    const/4 v6, 0x0

    const-string v7, "1 min"

    const-string v8, "10 s"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REP_GROUP_READ_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 828
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v23, "je.rep.monitorOpenTimeout"

    const-string v25, "1 min"

    const-string v26, "10 s"

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->MONITOR_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 840
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v5, "je.rep.monitorReadTimeout"

    const-string v7, "1 min"

    const-string v8, "10 s"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->MONITOR_READ_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 852
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v23, "je.rep.replicaTimeout"

    const-string v24, "1 s"

    const/16 v25, 0x0

    const-string v26, "30 s"

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 861
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 863
    nop

    .line 864
    nop

    .line 865
    const-string v5, "je.rep.replayMaxOpenDbHandles"

    const/4 v9, 0x1

    move-object v4, v0

    move-object v6, v13

    move-object/from16 v7, v21

    move-object v8, v15

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_MAX_OPEN_DB_HANDLES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 870
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v23, "je.rep.replayOpenHandleTimeout"

    const-string v24, "1 s"

    const-string v26, "30 s"

    const/16 v27, 0x1

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_DB_HANDLE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 879
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 881
    nop

    .line 883
    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "je.rep.replicaMaxGroupCommit"

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, v11

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_MAX_GROUP_COMMIT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 888
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v23, "je.rep.replicaGroupCommitInterval"

    const-string v24, "0 ms"

    const-string v26, "3 ms"

    const/16 v27, 0x0

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_GROUP_COMMIT_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 908
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.soReuseAddr"

    invoke-direct {v0, v2, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SO_REUSEADDR:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 926
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.bindInaddrAny"

    invoke-direct {v0, v2, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->BIND_INADDR_ANY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 946
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 949
    nop

    .line 950
    const v2, 0x249f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 951
    const-string v5, "je.rep.retrySocketBind"

    move-object v4, v0

    move-object v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SO_BIND_WAIT_MS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 961
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v23, "je.rep.feederManagerPollTimeout"

    const-string v24, "100 ms"

    const-string v26, "1 s"

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_MANAGER_POLL_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 972
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v5, "je.rep.feederTimeout"

    const-string v6, "1 s"

    const/4 v7, 0x0

    const-string v8, "30 s"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 985
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v23, "je.rep.transferLoggingThreshold"

    const-string v24, "1 ms"

    const-string v26, "5 s"

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->TRANSFER_LOGGING_THRESHOLD:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 998
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v5, "je.rep.replayLoggingThreshold"

    const-string v6, "1 ms"

    const-string v8, "5 s"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_LOGGING_THRESHOLD:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1017
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.commitToNetwork"

    invoke-direct {v0, v2, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->COMMIT_TO_NETWORK:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1024
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v5, "je.rep.preHeartbeatTimeoutMs"

    const-string v6, "1 s"

    const-string v8, "60 s"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->PRE_HEARTBEAT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1100
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1103
    nop

    .line 1104
    nop

    .line 1105
    const-string v5, "je.rep.txnRollbackLimit"

    move-object v4, v0

    move-object v6, v11

    move-object/from16 v7, v21

    move-object v8, v15

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->TXN_ROLLBACK_LIMIT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1112
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.txnRollbackDisabled"

    invoke-direct {v0, v2, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->TXN_ROLLBACK_DISABLED:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1122
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.allowUnknownStateEnvOpen"

    invoke-direct {v0, v2, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ALLOW_UNKNOWN_STATE_ENV_OPEN:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1132
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.dontJoinRepGroup"

    invoke-direct {v0, v2, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->DONT_JOIN_REP_GROUP:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1142
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.arbiterUse"

    invoke-direct {v0, v2, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ARBITER_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1154
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.subscriberUse"

    invoke-direct {v0, v2, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SUBSCRIBER_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1170
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.networkBackupUse"

    invoke-direct {v0, v2, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->NETWORKBACKUP_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1183
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1186
    nop

    .line 1188
    const v2, 0xc350

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "je.rep.networkBackupMaxLag"

    const/4 v7, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->NETWORKBACKUP_MAX_LAG:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1204
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.preserveRecordVersion"

    invoke-direct {v0, v2, v3, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->PRESERVE_RECORD_VERSION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1222
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.cacheRecordVersion"

    invoke-direct {v0, v2, v12, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->CACHE_RECORD_VERSION:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1233
    new-instance v0, Lcom/sleepycat/je/config/BooleanConfigParam;

    const-string v2, "je.rep.protocolOldStringEncoding"

    invoke-direct {v0, v2, v12, v3, v12}, Lcom/sleepycat/je/config/BooleanConfigParam;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->PROTOCOL_OLD_STRING_ENCODING:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1276
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepParams$ChannelTypeConfigParam;

    const-string v2, "je.rep.channelType"

    const-string v4, "basic"

    invoke-direct {v0, v2, v4, v3, v12}, Lcom/sleepycat/je/rep/impl/RepParams$ChannelTypeConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_TYPE:Lcom/sleepycat/je/config/ConfigParam;

    .line 1287
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.channelLogName"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_LOG_NAME:Lcom/sleepycat/je/config/ConfigParam;

    .line 1298
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.channelFactoryClass"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_FACTORY_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    .line 1308
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.channelFactoryParams"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_FACTORY_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

    .line 1318
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.keyStoreFile"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_FILE:Lcom/sleepycat/je/config/ConfigParam;

    .line 1328
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.keyStorePassword"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_PASSWORD:Lcom/sleepycat/je/config/ConfigParam;

    .line 1338
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.keyStorePasswordClass"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_PASSWORD_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    .line 1348
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.keyStorePasswordParams"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_PASSWORD_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

    .line 1358
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.keyStoreType"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_TYPE:Lcom/sleepycat/je/config/ConfigParam;

    .line 1368
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.serverKeyAlias"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_SERVER_KEY_ALIAS:Lcom/sleepycat/je/config/ConfigParam;

    .line 1378
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.clientKeyAlias"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_CLIENT_KEY_ALIAS:Lcom/sleepycat/je/config/ConfigParam;

    .line 1388
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.trustStoreFile"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_TRUSTSTORE_FILE:Lcom/sleepycat/je/config/ConfigParam;

    .line 1398
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.trustStoreType"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_TRUSTSTORE_TYPE:Lcom/sleepycat/je/config/ConfigParam;

    .line 1408
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.cipherSuites"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_CIPHER_SUITES:Lcom/sleepycat/je/config/ConfigParam;

    .line 1418
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.protocols"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_PROTOCOLS:Lcom/sleepycat/je/config/ConfigParam;

    .line 1428
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepParams$4;

    const-string v2, "je.rep.ssl.authenticator"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/rep/impl/RepParams$4;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_AUTHENTICATOR:Lcom/sleepycat/je/config/ConfigParam;

    .line 1451
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.authenticatorClass"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_AUTHENTICATOR_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    .line 1461
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.authenticatorParams"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_AUTHENTICATOR_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

    .line 1471
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepParams$5;

    const-string v2, "je.rep.ssl.hostVerifier"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/rep/impl/RepParams$5;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_HOST_VERIFIER:Lcom/sleepycat/je/config/ConfigParam;

    .line 1494
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.hostVerifierClass"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_HOST_VERIFIER_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    .line 1504
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.ssl.hostVerifierParams"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_HOST_VERIFIER_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

    .line 1513
    new-instance v0, Lcom/sleepycat/je/config/ConfigParam;

    const-string v2, "je.rep.test.jeVersion"

    invoke-direct {v0, v2, v14, v3, v12}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->TEST_JE_VERSION:Lcom/sleepycat/je/config/ConfigParam;

    .line 1522
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1524
    nop

    .line 1525
    nop

    .line 1526
    const/16 v2, 0x96

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "je.rep.replayCostPercent"

    move-object v4, v0

    move-object v7, v1

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_COST_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1533
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1535
    nop

    .line 1536
    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1537
    const-string v5, "je.rep.replayFreeDiskPercent"

    move-object v4, v0

    move-object v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_FREE_DISK_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1544
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v15, "je.rep.subscriptionPollInterval"

    const-string v16, "10 ms"

    const/16 v17, 0x0

    const-string v18, "1 s"

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SUBSCRIPTION_POLL_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1556
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v2, "je.rep.subscriptionPollTimeout"

    const-string v3, "100 ms"

    const/4 v4, 0x0

    const-string v5, "30 s"

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SUBSCRIPTION_POLL_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1568
    new-instance v0, Lcom/sleepycat/je/config/IntConfigParam;

    .line 1572
    nop

    .line 1574
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "je.rep.subscriptionMaxConnectRetries"

    const/4 v7, 0x0

    move-object v4, v0

    move-object v6, v13

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/config/IntConfigParam;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SUBSCRIPTION_MAX_CONNECT_RETRIES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1582
    new-instance v0, Lcom/sleepycat/je/config/DurationConfigParam;

    const-string v15, "je.rep.subscriptionSleepBeforeRetry"

    const-string v16, "1 s"

    const-string v18, "3 s"

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lcom/sleepycat/je/config/DurationConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->SUBSCRIPTION_SLEEP_BEFORE_RETRY:Lcom/sleepycat/je/config/DurationConfigParam;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lcom/sleepycat/je/rep/impl/RepParams;->validatePort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lcom/sleepycat/je/rep/impl/RepParams;->validateHostAndPort(Ljava/lang/String;Z)V

    return-void
.end method

.method private static validateHostAndPort(Ljava/lang/String;Z)V
    .locals 6
    .param p0, "hostAndPort"    # Ljava/lang/String;
    .param p1, "skipHostnameResolution"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1075
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1076
    .local v0, "colonToken":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 1077
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 1079
    .local v1, "hostName":Ljava/lang/String;
    :goto_0
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1083
    if-nez p1, :cond_1

    .line 1085
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    goto :goto_1

    .line 1086
    :catch_0
    move-exception v2

    .line 1087
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hostname: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1088
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1092
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :cond_1
    :goto_1
    if-ltz v0, :cond_2

    .line 1093
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/RepParams;->validatePort(Ljava/lang/String;)V

    .line 1095
    :cond_2
    return-void

    .line 1080
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "missing hostname"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static validatePort(Ljava/lang/String;)V
    .locals 5
    .param p0, "portString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1043
    const-string v0, "Invalid port number: "

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1045
    .local v1, "port":I
    if-lez v1, :cond_1

    const v2, 0xffff

    if-gt v1, v2, :cond_1

    .line 1049
    const/16 v2, 0x3ff

    if-le v1, v2, :cond_0

    .line 1058
    .end local v1    # "port":I
    nop

    .line 1059
    return-void

    .line 1050
    .restart local v1    # "port":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Port number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid because the port must be outside the range of \"well known\" ports"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "portString":Ljava/lang/String;
    throw v2

    .line 1046
    .restart local p0    # "portString":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "portString":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    .end local v1    # "port":I
    .restart local p0    # "portString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1056
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
