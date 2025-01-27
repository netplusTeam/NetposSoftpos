.class public final enum Lorg/apache/sshd/common/channel/PtyMode;
.super Ljava/lang/Enum;
.source "PtyMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/channel/PtyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/channel/PtyMode;

.field public static final BY_OPCODE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMMANDS:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CS7:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum CS8:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum ECHO:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum ECHOCTL:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum ECHOE:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum ECHOK:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum ECHOKE:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum ECHONL:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final FALSE_SETTING:Ljava/lang/Integer;

.field public static final enum ICANON:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum ICRNL:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum IEXTEN:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum IGNCR:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum IGNPAR:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum IMAXBEL:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum INLCR:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum INPCK:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum ISIG:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum ISTRIP:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum IUCLC:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum IUTF8:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum IXANY:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum IXOFF:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum IXON:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final MODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NOFLSH:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum OCRNL:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum OLCUC:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum ONLCR:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum ONLRET:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum ONOCR:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final OPCODE_EXTRACTOR:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum OPOST:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum PARENB:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum PARMRK:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum PARODD:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum PENDIN:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum TOSTOP:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final TRUE_SETTING:Ljava/lang/Integer;

.field public static final TTY_OP_END:B

.field public static final enum TTY_OP_ISPEED:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum TTY_OP_OSPEED:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VDISCARD:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VDSUSP:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VEOF:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VEOL:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VEOL2:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VERASE:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VFLUSH:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VINTR:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VKILL:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VLNEXT:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VQUIT:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VREPRINT:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VSTART:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VSTATUS:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VSTOP:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VSUSP:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VSWTCH:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum VWERASE:Lorg/apache/sshd/common/channel/PtyMode;

.field public static final enum XCASE:Lorg/apache/sshd/common/channel/PtyMode;


# instance fields
.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 59

    .line 48
    new-instance v0, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v1, "VINTR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VINTR:Lorg/apache/sshd/common/channel/PtyMode;

    .line 52
    new-instance v1, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v4, "VQUIT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/sshd/common/channel/PtyMode;->VQUIT:Lorg/apache/sshd/common/channel/PtyMode;

    .line 56
    new-instance v4, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v6, "VERASE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/sshd/common/channel/PtyMode;->VERASE:Lorg/apache/sshd/common/channel/PtyMode;

    .line 60
    new-instance v6, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v8, "VKILL"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/sshd/common/channel/PtyMode;->VKILL:Lorg/apache/sshd/common/channel/PtyMode;

    .line 64
    new-instance v8, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v10, "VEOF"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/sshd/common/channel/PtyMode;->VEOF:Lorg/apache/sshd/common/channel/PtyMode;

    .line 68
    new-instance v10, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v12, "VEOL"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/sshd/common/channel/PtyMode;->VEOL:Lorg/apache/sshd/common/channel/PtyMode;

    .line 72
    new-instance v12, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v14, "VEOL2"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/sshd/common/channel/PtyMode;->VEOL2:Lorg/apache/sshd/common/channel/PtyMode;

    .line 76
    new-instance v14, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v13, "VSTART"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/sshd/common/channel/PtyMode;->VSTART:Lorg/apache/sshd/common/channel/PtyMode;

    .line 80
    new-instance v13, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v15, "VSTOP"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/sshd/common/channel/PtyMode;->VSTOP:Lorg/apache/sshd/common/channel/PtyMode;

    .line 84
    new-instance v15, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v11, "VSUSP"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lorg/apache/sshd/common/channel/PtyMode;->VSUSP:Lorg/apache/sshd/common/channel/PtyMode;

    .line 88
    new-instance v11, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v9, "VDSUSP"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/sshd/common/channel/PtyMode;->VDSUSP:Lorg/apache/sshd/common/channel/PtyMode;

    .line 92
    new-instance v9, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v7, "VREPRINT"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/sshd/common/channel/PtyMode;->VREPRINT:Lorg/apache/sshd/common/channel/PtyMode;

    .line 96
    new-instance v7, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "VWERASE"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/sshd/common/channel/PtyMode;->VWERASE:Lorg/apache/sshd/common/channel/PtyMode;

    .line 100
    new-instance v5, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v3, "VLNEXT"

    move-object/from16 v16, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/sshd/common/channel/PtyMode;->VLNEXT:Lorg/apache/sshd/common/channel/PtyMode;

    .line 104
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v2, "VFLUSH"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v2, v7, v5}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->VFLUSH:Lorg/apache/sshd/common/channel/PtyMode;

    .line 108
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v7, "VSWTCH"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v2, v7, v5, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->VSWTCH:Lorg/apache/sshd/common/channel/PtyMode;

    .line 112
    new-instance v7, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "VSTATUS"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v7, v5, v3, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/sshd/common/channel/PtyMode;->VSTATUS:Lorg/apache/sshd/common/channel/PtyMode;

    .line 116
    new-instance v5, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v3, "VDISCARD"

    move-object/from16 v20, v7

    const/16 v7, 0x12

    invoke-direct {v5, v3, v2, v7}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/sshd/common/channel/PtyMode;->VDISCARD:Lorg/apache/sshd/common/channel/PtyMode;

    .line 124
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v2, "IGNPAR"

    move-object/from16 v21, v5

    const/16 v5, 0x1e

    invoke-direct {v3, v2, v7, v5}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->IGNPAR:Lorg/apache/sshd/common/channel/PtyMode;

    .line 128
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v7, "PARMRK"

    const/16 v5, 0x13

    move-object/from16 v22, v3

    const/16 v3, 0x1f

    invoke-direct {v2, v7, v5, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->PARMRK:Lorg/apache/sshd/common/channel/PtyMode;

    .line 132
    new-instance v5, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v7, "INPCK"

    const/16 v3, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x20

    invoke-direct {v5, v7, v3, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/sshd/common/channel/PtyMode;->INPCK:Lorg/apache/sshd/common/channel/PtyMode;

    .line 136
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v7, "ISTRIP"

    const/16 v2, 0x15

    move-object/from16 v24, v5

    const/16 v5, 0x21

    invoke-direct {v3, v7, v2, v5}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->ISTRIP:Lorg/apache/sshd/common/channel/PtyMode;

    .line 140
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "INLCR"

    const/16 v7, 0x16

    move-object/from16 v25, v3

    const/16 v3, 0x22

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->INLCR:Lorg/apache/sshd/common/channel/PtyMode;

    .line 144
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "IGNCR"

    const/16 v7, 0x17

    move-object/from16 v26, v2

    const/16 v2, 0x23

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->IGNCR:Lorg/apache/sshd/common/channel/PtyMode;

    .line 148
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "ICRNL"

    const/16 v7, 0x18

    move-object/from16 v27, v3

    const/16 v3, 0x24

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->ICRNL:Lorg/apache/sshd/common/channel/PtyMode;

    .line 152
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "IUCLC"

    const/16 v7, 0x19

    move-object/from16 v28, v2

    const/16 v2, 0x25

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->IUCLC:Lorg/apache/sshd/common/channel/PtyMode;

    .line 156
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "IXON"

    const/16 v7, 0x1a

    move-object/from16 v29, v3

    const/16 v3, 0x26

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->IXON:Lorg/apache/sshd/common/channel/PtyMode;

    .line 160
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "IXANY"

    const/16 v7, 0x1b

    move-object/from16 v30, v2

    const/16 v2, 0x27

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->IXANY:Lorg/apache/sshd/common/channel/PtyMode;

    .line 164
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "IXOFF"

    const/16 v7, 0x1c

    move-object/from16 v31, v3

    const/16 v3, 0x28

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->IXOFF:Lorg/apache/sshd/common/channel/PtyMode;

    .line 168
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "IMAXBEL"

    const/16 v7, 0x1d

    move-object/from16 v32, v2

    const/16 v2, 0x29

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->IMAXBEL:Lorg/apache/sshd/common/channel/PtyMode;

    .line 172
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "IUTF8"

    const/16 v7, 0x2a

    move-object/from16 v33, v3

    const/16 v3, 0x1e

    invoke-direct {v2, v5, v3, v7}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->IUTF8:Lorg/apache/sshd/common/channel/PtyMode;

    .line 179
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "ISIG"

    const/16 v7, 0x32

    move-object/from16 v34, v2

    const/16 v2, 0x1f

    invoke-direct {v3, v5, v2, v7}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->ISIG:Lorg/apache/sshd/common/channel/PtyMode;

    .line 183
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "ICANON"

    const/16 v7, 0x33

    move-object/from16 v35, v3

    const/16 v3, 0x20

    invoke-direct {v2, v5, v3, v7}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->ICANON:Lorg/apache/sshd/common/channel/PtyMode;

    .line 188
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "XCASE"

    const/16 v7, 0x21

    move-object/from16 v36, v2

    const/16 v2, 0x34

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->XCASE:Lorg/apache/sshd/common/channel/PtyMode;

    .line 192
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "ECHO"

    const/16 v7, 0x22

    move-object/from16 v37, v3

    const/16 v3, 0x35

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->ECHO:Lorg/apache/sshd/common/channel/PtyMode;

    .line 196
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "ECHOE"

    const/16 v7, 0x23

    move-object/from16 v38, v2

    const/16 v2, 0x36

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->ECHOE:Lorg/apache/sshd/common/channel/PtyMode;

    .line 200
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "ECHOK"

    const/16 v7, 0x24

    move-object/from16 v39, v3

    const/16 v3, 0x37

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->ECHOK:Lorg/apache/sshd/common/channel/PtyMode;

    .line 204
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "ECHONL"

    const/16 v7, 0x25

    move-object/from16 v40, v2

    const/16 v2, 0x38

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->ECHONL:Lorg/apache/sshd/common/channel/PtyMode;

    .line 208
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "NOFLSH"

    const/16 v7, 0x26

    move-object/from16 v41, v3

    const/16 v3, 0x39

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->NOFLSH:Lorg/apache/sshd/common/channel/PtyMode;

    .line 212
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "TOSTOP"

    const/16 v7, 0x27

    move-object/from16 v42, v2

    const/16 v2, 0x3a

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->TOSTOP:Lorg/apache/sshd/common/channel/PtyMode;

    .line 216
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "IEXTEN"

    const/16 v7, 0x28

    move-object/from16 v43, v3

    const/16 v3, 0x3b

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->IEXTEN:Lorg/apache/sshd/common/channel/PtyMode;

    .line 220
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "ECHOCTL"

    const/16 v7, 0x29

    move-object/from16 v44, v2

    const/16 v2, 0x3c

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->ECHOCTL:Lorg/apache/sshd/common/channel/PtyMode;

    .line 224
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "ECHOKE"

    const/16 v7, 0x2a

    move-object/from16 v45, v3

    const/16 v3, 0x3d

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->ECHOKE:Lorg/apache/sshd/common/channel/PtyMode;

    .line 228
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "PENDIN"

    const/16 v7, 0x2b

    move-object/from16 v46, v2

    const/16 v2, 0x3e

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->PENDIN:Lorg/apache/sshd/common/channel/PtyMode;

    .line 235
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "OPOST"

    const/16 v7, 0x2c

    move-object/from16 v47, v3

    const/16 v3, 0x46

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->OPOST:Lorg/apache/sshd/common/channel/PtyMode;

    .line 239
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "OLCUC"

    const/16 v7, 0x2d

    move-object/from16 v48, v2

    const/16 v2, 0x47

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->OLCUC:Lorg/apache/sshd/common/channel/PtyMode;

    .line 243
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "ONLCR"

    const/16 v7, 0x2e

    move-object/from16 v49, v3

    const/16 v3, 0x48

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->ONLCR:Lorg/apache/sshd/common/channel/PtyMode;

    .line 247
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "OCRNL"

    const/16 v7, 0x2f

    move-object/from16 v50, v2

    const/16 v2, 0x49

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->OCRNL:Lorg/apache/sshd/common/channel/PtyMode;

    .line 251
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "ONOCR"

    const/16 v7, 0x30

    move-object/from16 v51, v3

    const/16 v3, 0x4a

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->ONOCR:Lorg/apache/sshd/common/channel/PtyMode;

    .line 255
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "ONLRET"

    const/16 v7, 0x31

    move-object/from16 v52, v2

    const/16 v2, 0x4b

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->ONLRET:Lorg/apache/sshd/common/channel/PtyMode;

    .line 262
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "CS7"

    const/16 v7, 0x32

    move-object/from16 v53, v3

    const/16 v3, 0x5a

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->CS7:Lorg/apache/sshd/common/channel/PtyMode;

    .line 266
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "CS8"

    const/16 v7, 0x33

    move-object/from16 v54, v2

    const/16 v2, 0x5b

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->CS8:Lorg/apache/sshd/common/channel/PtyMode;

    .line 270
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "PARENB"

    const/16 v7, 0x34

    move-object/from16 v55, v3

    const/16 v3, 0x5c

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->PARENB:Lorg/apache/sshd/common/channel/PtyMode;

    .line 274
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "PARODD"

    const/16 v7, 0x35

    move-object/from16 v56, v2

    const/16 v2, 0x5d

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->PARODD:Lorg/apache/sshd/common/channel/PtyMode;

    .line 281
    new-instance v2, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "TTY_OP_ISPEED"

    const/16 v7, 0x36

    move-object/from16 v57, v3

    const/16 v3, 0x80

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->TTY_OP_ISPEED:Lorg/apache/sshd/common/channel/PtyMode;

    .line 285
    new-instance v3, Lorg/apache/sshd/common/channel/PtyMode;

    const-string v5, "TTY_OP_OSPEED"

    const/16 v7, 0x37

    move-object/from16 v58, v2

    const/16 v2, 0x81

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/sshd/common/channel/PtyMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/channel/PtyMode;->TTY_OP_OSPEED:Lorg/apache/sshd/common/channel/PtyMode;

    .line 40
    const/16 v2, 0x38

    new-array v2, v2, [Lorg/apache/sshd/common/channel/PtyMode;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v13, v2, v0

    const/16 v0, 0x9

    aput-object v15, v2, v0

    const/16 v0, 0xa

    aput-object v11, v2, v0

    const/16 v0, 0xb

    aput-object v9, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v44, v2, v0

    const/16 v0, 0x29

    aput-object v45, v2, v0

    const/16 v0, 0x2a

    aput-object v46, v2, v0

    const/16 v0, 0x2b

    aput-object v47, v2, v0

    const/16 v0, 0x2c

    aput-object v48, v2, v0

    const/16 v0, 0x2d

    aput-object v49, v2, v0

    const/16 v0, 0x2e

    aput-object v50, v2, v0

    const/16 v0, 0x2f

    aput-object v51, v2, v0

    const/16 v0, 0x30

    aput-object v52, v2, v0

    const/16 v0, 0x31

    aput-object v53, v2, v0

    const/16 v0, 0x32

    aput-object v54, v2, v0

    const/16 v0, 0x33

    aput-object v55, v2, v0

    const/16 v0, 0x34

    aput-object v56, v2, v0

    const/16 v0, 0x35

    aput-object v57, v2, v0

    const/16 v0, 0x36

    aput-object v58, v2, v0

    const/16 v0, 0x37

    aput-object v3, v2, v0

    sput-object v2, Lorg/apache/sshd/common/channel/PtyMode;->$VALUES:[Lorg/apache/sshd/common/channel/PtyMode;

    .line 290
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/channel/PtyMode;->FALSE_SETTING:Ljava/lang/Integer;

    .line 291
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/channel/PtyMode;->TRUE_SETTING:Ljava/lang/Integer;

    .line 296
    const-class v0, Lorg/apache/sshd/common/channel/PtyMode;

    .line 297
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/channel/PtyMode;->MODES:Ljava/util/Set;

    .line 299
    new-instance v1, Lorg/apache/sshd/common/channel/PtyMode$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/common/channel/PtyMode$$ExternalSyntheticLambda0;-><init>()V

    .line 301
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/apache/sshd/common/util/GenericUtils;->toSortedMap(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/NavigableMap;

    move-result-object v0

    .line 300
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/channel/PtyMode;->COMMANDS:Ljava/util/NavigableMap;

    .line 306
    new-instance v0, Lorg/apache/sshd/common/channel/PtyMode$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/sshd/common/channel/PtyMode$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/channel/PtyMode;->OPCODE_EXTRACTOR:Ljava/util/function/ToIntFunction;

    .line 313
    new-instance v0, Lorg/apache/sshd/common/channel/PtyMode$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/channel/PtyMode$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/channel/PtyMode;->BY_OPCODE:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 325
    iput p3, p0, Lorg/apache/sshd/common/channel/PtyMode;->v:I

    .line 326
    return-void
.end method

.method public static createEnabledOptions(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 368
    .local p0, "options":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/channel/PtyMode;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 372
    :cond_0
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/sshd/common/channel/PtyMode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 373
    .local v0, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/channel/PtyMode;

    .line 374
    .local v2, "m":Lorg/apache/sshd/common/channel/PtyMode;
    sget-object v3, Lorg/apache/sshd/common/channel/PtyMode;->TRUE_SETTING:Ljava/lang/Integer;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .end local v2    # "m":Lorg/apache/sshd/common/channel/PtyMode;
    goto :goto_0

    .line 377
    :cond_1
    return-object v0
.end method

.method public static varargs createEnabledOptions([Lorg/apache/sshd/common/channel/PtyMode;)Ljava/util/Map;
    .locals 1
    .param p0, "options"    # [Lorg/apache/sshd/common/channel/PtyMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ")",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 360
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->of([Ljava/lang/Enum;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/channel/PtyMode;->createEnabledOptions(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static fromInt(I)Lorg/apache/sshd/common/channel/PtyMode;
    .locals 2
    .param p0, "b"    # I

    .line 338
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->COMMANDS:Ljava/util/NavigableMap;

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/PtyMode;

    return-object v0
.end method

.method public static fromName(Ljava/lang/String;)Lorg/apache/sshd/common/channel/PtyMode;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 342
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 343
    return-object v1

    .line 346
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->MODES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/channel/PtyMode;

    .line 347
    .local v2, "m":Lorg/apache/sshd/common/channel/PtyMode;
    invoke-virtual {v2}, Lorg/apache/sshd/common/channel/PtyMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    return-object v2

    .line 350
    .end local v2    # "m":Lorg/apache/sshd/common/channel/PtyMode;
    :cond_1
    goto :goto_0

    .line 352
    :cond_2
    return-object v1
.end method

.method public static getBooleanSettingValue(I)Z
    .locals 1
    .param p0, "v"    # I

    .line 502
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getBooleanSettingValue(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "v"    # Ljava/lang/Object;

    .line 494
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/sshd/common/channel/PtyMode;->getBooleanSettingValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getBooleanSettingValue(Ljava/util/Map;Ljava/util/Collection;Z)Z
    .locals 5
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "*>;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;Z)Z"
        }
    .end annotation

    .line 457
    .local p0, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;*>;"
    .local p1, "enablers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/channel/PtyMode;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 461
    :cond_0
    const/4 v0, 0x0

    .line 462
    .local v0, "settingsCount":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/channel/PtyMode;

    .line 463
    .local v2, "m":Lorg/apache/sshd/common/channel/PtyMode;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 464
    .local v3, "v":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 465
    goto :goto_0

    .line 468
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 471
    invoke-static {v3}, Lorg/apache/sshd/common/channel/PtyMode;->getBooleanSettingValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 472
    const/4 v1, 0x1

    return v1

    .line 474
    .end local v2    # "m":Lorg/apache/sshd/common/channel/PtyMode;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 477
    :cond_3
    if-lez v0, :cond_4

    .line 478
    const/4 v1, 0x0

    return v1

    .line 480
    :cond_4
    return p2

    .line 458
    .end local v0    # "settingsCount":I
    :cond_5
    :goto_1
    return p2
.end method

.method public static getBooleanSettingValue(Ljava/util/Map;Lorg/apache/sshd/common/channel/PtyMode;)Z
    .locals 1
    .param p1, "m"    # Lorg/apache/sshd/common/channel/PtyMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "*>;",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ")Z"
        }
    .end annotation

    .line 420
    .local p0, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;*>;"
    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/channel/PtyMode;->getBooleanSettingValue(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 421
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCharSetting(Lorg/apache/sshd/common/channel/PtyMode;)Z
    .locals 4
    .param p0, "m"    # Lorg/apache/sshd/common/channel/PtyMode;

    .line 511
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 512
    return v0

    .line 515
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/PtyMode;->name()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 517
    .local v2, "ch":C
    const/16 v3, 0x76

    if-eq v2, v3, :cond_1

    const/16 v3, 0x56

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic lambda$static$0(Lorg/apache/sshd/common/channel/PtyMode;)I
    .locals 1
    .param p0, "v"    # Lorg/apache/sshd/common/channel/PtyMode;

    .line 306
    if-nez p0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/PtyMode;->toInt()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static resolveEnabledOptions(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "*>;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;"
        }
    .end annotation

    .line 392
    .local p0, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;*>;"
    .local p1, "options":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/channel/PtyMode;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 396
    :cond_0
    const-class v0, Lorg/apache/sshd/common/channel/PtyMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 397
    .local v0, "enabled":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/common/channel/PtyMode;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/channel/PtyMode;

    .line 398
    .local v2, "m":Lorg/apache/sshd/common/channel/PtyMode;
    invoke-static {p0, v2}, Lorg/apache/sshd/common/channel/PtyMode;->getBooleanSettingValue(Ljava/util/Map;Lorg/apache/sshd/common/channel/PtyMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v2    # "m":Lorg/apache/sshd/common/channel/PtyMode;
    :cond_1
    goto :goto_0

    .line 403
    :cond_2
    return-object v0

    .line 393
    .end local v0    # "enabled":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/common/channel/PtyMode;>;"
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varargs resolveEnabledOptions(Ljava/util/Map;[Lorg/apache/sshd/common/channel/PtyMode;)Ljava/util/Set;
    .locals 1
    .param p1, "options"    # [Lorg/apache/sshd/common/channel/PtyMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "*>;[",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ")",
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;"
        }
    .end annotation

    .line 381
    .local p0, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;*>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->of([Ljava/lang/Enum;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/channel/PtyMode;->resolveEnabledOptions(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/channel/PtyMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lorg/apache/sshd/common/channel/PtyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/PtyMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/channel/PtyMode;
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->$VALUES:[Lorg/apache/sshd/common/channel/PtyMode;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/channel/PtyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/channel/PtyMode;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 329
    iget v0, p0, Lorg/apache/sshd/common/channel/PtyMode;->v:I

    return v0
.end method
