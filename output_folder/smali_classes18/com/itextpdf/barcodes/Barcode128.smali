.class public Lcom/itextpdf/barcodes/Barcode128;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "Barcode128.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;
    }
.end annotation


# static fields
.field private static final BARS:[[B

.field private static final BARS_STOP:[B

.field public static final CODE128:I = 0x1

.field public static final CODE128_RAW:I = 0x3

.field public static final CODE128_UCC:I = 0x2

.field public static final CODE_A:C = '\u00c8'

.field public static final CODE_AB_TO_C:C = 'c'

.field public static final CODE_AC_TO_B:C = 'd'

.field public static final CODE_BC_TO_A:C = 'e'

.field public static final CODE_C:C = '\u00c7'

.field public static final DEL:C = '\u00c3'

.field public static final FNC1:C = '\u00ca'

.field public static final FNC1_INDEX:C = 'f'

.field public static final FNC2:C = '\u00c5'

.field public static final FNC3:C = '\u00c4'

.field public static final FNC4:C = '\u00c8'

.field public static final SHIFT:C = '\u00c6'

.field public static final STARTA:C = '\u00cb'

.field public static final STARTB:C = '\u00cc'

.field public static final STARTC:C = '\u00cd'

.field public static final START_A:C = 'g'

.field public static final START_B:C = 'h'

.field public static final START_C:C = 'i'

.field private static ais:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private codeSet:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 67
    const/16 v0, 0x6a

    new-array v0, v0, [[B

    const/4 v1, 0x6

    .line 818
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 67
    new-array v3, v1, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v0, v4

    new-array v3, v1, [B

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v0, v5

    new-array v3, v1, [B

    fill-array-data v3, :array_2

    const/4 v6, 0x2

    aput-object v3, v0, v6

    new-array v3, v1, [B

    fill-array-data v3, :array_3

    const/4 v7, 0x3

    aput-object v3, v0, v7

    new-array v3, v1, [B

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v0, v7

    new-array v3, v1, [B

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v0, v8

    new-array v3, v1, [B

    fill-array-data v3, :array_6

    aput-object v3, v0, v1

    new-array v3, v1, [B

    fill-array-data v3, :array_7

    const/4 v8, 0x7

    aput-object v3, v0, v8

    new-array v3, v1, [B

    fill-array-data v3, :array_8

    const/16 v9, 0x8

    .line 788
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 67
    aput-object v3, v0, v9

    new-array v3, v1, [B

    fill-array-data v3, :array_9

    const/16 v9, 0x9

    aput-object v3, v0, v9

    new-array v3, v1, [B

    fill-array-data v3, :array_a

    const/16 v11, 0xa

    .line 786
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 67
    aput-object v3, v0, v11

    new-array v3, v1, [B

    fill-array-data v3, :array_b

    const/16 v11, 0xb

    aput-object v3, v0, v11

    new-array v3, v1, [B

    fill-array-data v3, :array_c

    const/16 v13, 0xc

    aput-object v3, v0, v13

    new-array v3, v1, [B

    fill-array-data v3, :array_d

    const/16 v14, 0xd

    aput-object v3, v0, v14

    new-array v3, v1, [B

    fill-array-data v3, :array_e

    const/16 v15, 0xe

    aput-object v3, v0, v15

    new-array v3, v1, [B

    fill-array-data v3, :array_f

    const/16 v16, 0xf

    aput-object v3, v0, v16

    new-array v3, v1, [B

    fill-array-data v3, :array_10

    const/16 v17, 0x10

    .line 784
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 67
    aput-object v3, v0, v17

    new-array v3, v1, [B

    fill-array-data v3, :array_11

    const/16 v17, 0x11

    .line 791
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 67
    aput-object v3, v0, v17

    new-array v3, v1, [B

    fill-array-data v3, :array_12

    const/16 v17, 0x12

    aput-object v3, v0, v17

    new-array v3, v1, [B

    fill-array-data v3, :array_13

    const/16 v18, 0x13

    aput-object v3, v0, v18

    new-array v3, v1, [B

    fill-array-data v3, :array_14

    const/16 v18, 0x14

    .line 783
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 67
    aput-object v3, v0, v18

    new-array v3, v1, [B

    fill-array-data v3, :array_15

    const/16 v18, 0x15

    aput-object v3, v0, v18

    new-array v3, v1, [B

    fill-array-data v3, :array_16

    const/16 v19, 0x16

    .line 794
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 67
    aput-object v3, v0, v19

    new-array v3, v1, [B

    fill-array-data v3, :array_17

    const/16 v19, 0x17

    aput-object v3, v0, v19

    new-array v3, v1, [B

    fill-array-data v3, :array_18

    const/16 v20, 0x18

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_19

    const/16 v20, 0x19

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_1a

    const/16 v20, 0x1a

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_1b

    const/16 v20, 0x1b

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_1c

    const/16 v20, 0x1c

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_1d

    const/16 v20, 0x1d

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_1e

    const/16 v20, 0x1e

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_1f

    const/16 v20, 0x1f

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_20

    const/16 v20, 0x20

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_21

    const/16 v20, 0x21

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_22

    const/16 v20, 0x22

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_23

    const/16 v20, 0x23

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_24

    const/16 v20, 0x24

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_25

    const/16 v20, 0x25

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_26

    const/16 v20, 0x26

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_27

    const/16 v20, 0x27

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_28

    const/16 v20, 0x28

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_29

    const/16 v20, 0x29

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_2a

    const/16 v20, 0x2a

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_2b

    const/16 v20, 0x2b

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_2c

    const/16 v20, 0x2c

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_2d

    const/16 v20, 0x2d

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_2e

    const/16 v20, 0x2e

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_2f

    const/16 v20, 0x2f

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_30

    const/16 v20, 0x30

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_31

    const/16 v20, 0x31

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_32

    const/16 v20, 0x32

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_33

    const/16 v20, 0x33

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_34

    const/16 v20, 0x34

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_35

    const/16 v20, 0x35

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_36

    const/16 v20, 0x36

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_37

    const/16 v20, 0x37

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_38

    const/16 v20, 0x38

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_39

    const/16 v20, 0x39

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_3a

    const/16 v20, 0x3a

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_3b

    const/16 v20, 0x3b

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_3c

    const/16 v20, 0x3c

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_3d

    const/16 v20, 0x3d

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_3e

    const/16 v20, 0x3e

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_3f

    const/16 v20, 0x3f

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_40

    const/16 v20, 0x40

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_41

    const/16 v20, 0x41

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_42

    const/16 v20, 0x42

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_43

    const/16 v20, 0x43

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_44

    const/16 v20, 0x44

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_45

    const/16 v20, 0x45

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_46

    const/16 v20, 0x46

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_47

    const/16 v20, 0x47

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_48

    const/16 v20, 0x48

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_49

    const/16 v20, 0x49

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_4a

    const/16 v20, 0x4a

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_4b

    const/16 v20, 0x4b

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_4c

    const/16 v20, 0x4c

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_4d

    const/16 v20, 0x4d

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_4e

    const/16 v20, 0x4e

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_4f

    const/16 v20, 0x4f

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_50

    const/16 v20, 0x50

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_51

    const/16 v20, 0x51

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_52

    const/16 v20, 0x52

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_53

    const/16 v20, 0x53

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_54

    const/16 v20, 0x54

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_55

    const/16 v20, 0x55

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_56

    const/16 v20, 0x56

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_57

    const/16 v20, 0x57

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_58

    const/16 v20, 0x58

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_59

    const/16 v20, 0x59

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_5a

    const/16 v20, 0x5a

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_5b

    const/16 v20, 0x5b

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_5c

    const/16 v20, 0x5c

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_5d

    const/16 v20, 0x5d

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_5e

    const/16 v20, 0x5e

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_5f

    const/16 v20, 0x5f

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_60

    const/16 v20, 0x60

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_61

    const/16 v20, 0x61

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_62

    const/16 v20, 0x62

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_63

    const/16 v20, 0x63

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_64

    const/16 v20, 0x64

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_65

    const/16 v20, 0x65

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_66

    const/16 v20, 0x66

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_67

    const/16 v20, 0x67

    aput-object v3, v0, v20

    new-array v3, v1, [B

    fill-array-data v3, :array_68

    const/16 v20, 0x68

    aput-object v3, v0, v20

    new-array v1, v1, [B

    fill-array-data v1, :array_69

    const/16 v3, 0x69

    aput-object v1, v0, v3

    sput-object v0, Lcom/itextpdf/barcodes/Barcode128;->BARS:[[B

    .line 180
    new-array v0, v8, [B

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/itextpdf/barcodes/Barcode128;->BARS_STOP:[B

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    .line 783
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0xf0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0xf1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0xfa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0xfb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0xfc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const/16 v0, 0xc1c

    .local v0, "k":I
    :goto_0
    const/16 v3, 0xe74

    if-ge v0, v3, :cond_0

    .line 803
    sget-object v3, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 805
    .end local v0    # "k":I
    :cond_0
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const/16 v0, 0xf3c

    .restart local v0    # "k":I
    :goto_1
    const/16 v3, 0xf64

    if-ge v0, v3, :cond_1

    .line 807
    sget-object v3, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 809
    .end local v0    # "k":I
    :cond_1
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x191

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x192

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x193

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const/16 v0, 0x19a

    .restart local v0    # "k":I
    :goto_2
    const/16 v3, 0x1a0

    if-ge v0, v3, :cond_2

    .line 814
    sget-object v3, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 816
    .end local v0    # "k":I
    :cond_2
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1a4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1a5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1a6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1a7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1a9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1b59

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1b5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const/16 v0, 0x1b76

    .restart local v0    # "k":I
    :goto_3
    const/16 v3, 0x1b80

    if-ge v0, v3, :cond_3

    .line 826
    sget-object v3, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 828
    .end local v0    # "k":I
    :cond_3
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1f41

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1f42

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1f43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1f44

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1f45

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1f46

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1f47

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1f48

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1f52

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1f54

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1fa4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1fa5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v3, 0x1fa6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const/16 v0, 0x5a

    .restart local v0    # "k":I
    :goto_4
    const/16 v2, 0x64

    if-ge v0, v2, :cond_4

    .line 842
    sget-object v2, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 844
    .end local v0    # "k":I
    :cond_4
    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x2t
        0x2t
        0x3t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x3t
        0x2t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x3t
        0x1t
        0x2t
        0x2t
        0x2t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x2t
        0x1t
        0x3t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x2t
        0x1t
        0x3t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x3t
        0x1t
        0x2t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x2t
        0x3t
        0x1t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x1t
        0x3t
        0x2t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x2t
        0x3t
        0x1t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x2t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x1t
        0x2t
        0x2t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x2t
        0x2t
        0x3t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x1t
        0x3t
        0x2t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x2t
        0x3t
        0x1t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x2t
        0x1t
        0x3t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x2t
        0x2t
        0x3t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x3t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x3t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x3t
        0x2t
        0x1t
        0x1t
        0x2t
        0x2t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x3t
        0x2t
        0x1t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x3t
        0x1t
        0x2t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x3t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x2t
        0x1t
        0x2t
        0x1t
        0x2t
        0x3t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x2t
        0x1t
        0x2t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x2t
        0x3t
        0x2t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x3t
        0x2t
        0x3t
    .end array-data

    nop

    :array_22
    .array-data 1
        0x1t
        0x3t
        0x1t
        0x1t
        0x2t
        0x3t
    .end array-data

    nop

    :array_23
    .array-data 1
        0x1t
        0x3t
        0x1t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x3t
        0x1t
        0x3t
    .end array-data

    nop

    :array_25
    .array-data 1
        0x1t
        0x3t
        0x2t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_26
    .array-data 1
        0x1t
        0x3t
        0x2t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x3t
        0x1t
        0x3t
    .end array-data

    nop

    :array_28
    .array-data 1
        0x2t
        0x3t
        0x1t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_29
    .array-data 1
        0x2t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x3t
    .end array-data

    nop

    :array_2b
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x3t
        0x3t
        0x1t
    .end array-data

    nop

    :array_2c
    .array-data 1
        0x1t
        0x3t
        0x2t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_2d
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x1t
        0x2t
        0x3t
    .end array-data

    nop

    :array_2e
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_2f
    .array-data 1
        0x1t
        0x3t
        0x3t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_30
    .array-data 1
        0x3t
        0x1t
        0x3t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_31
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x3t
        0x3t
        0x1t
    .end array-data

    nop

    :array_32
    .array-data 1
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_33
    .array-data 1
        0x2t
        0x1t
        0x3t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_34
    .array-data 1
        0x2t
        0x1t
        0x3t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_35
    .array-data 1
        0x2t
        0x1t
        0x3t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_36
    .array-data 1
        0x3t
        0x1t
        0x1t
        0x1t
        0x2t
        0x3t
    .end array-data

    nop

    :array_37
    .array-data 1
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_38
    .array-data 1
        0x3t
        0x3t
        0x1t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_39
    .array-data 1
        0x3t
        0x1t
        0x2t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_3a
    .array-data 1
        0x3t
        0x1t
        0x2t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3b
    .array-data 1
        0x3t
        0x3t
        0x2t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3c
    .array-data 1
        0x3t
        0x1t
        0x4t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3d
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x4t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3e
    .array-data 1
        0x4t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3f
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x4t
    .end array-data

    nop

    :array_40
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x4t
        0x2t
        0x2t
    .end array-data

    nop

    :array_41
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x4t
    .end array-data

    nop

    :array_42
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x4t
        0x2t
        0x1t
    .end array-data

    nop

    :array_43
    .array-data 1
        0x1t
        0x4t
        0x1t
        0x1t
        0x2t
        0x2t
    .end array-data

    nop

    :array_44
    .array-data 1
        0x1t
        0x4t
        0x1t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_45
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x2t
        0x1t
        0x4t
    .end array-data

    nop

    :array_46
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x4t
        0x1t
        0x2t
    .end array-data

    nop

    :array_47
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x1t
        0x1t
        0x4t
    .end array-data

    nop

    :array_48
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x4t
        0x1t
        0x1t
    .end array-data

    nop

    :array_49
    .array-data 1
        0x1t
        0x4t
        0x2t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_4a
    .array-data 1
        0x1t
        0x4t
        0x2t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_4b
    .array-data 1
        0x2t
        0x4t
        0x1t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_4c
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x4t
    .end array-data

    nop

    :array_4d
    .array-data 1
        0x4t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_4e
    .array-data 1
        0x2t
        0x4t
        0x1t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_4f
    .array-data 1
        0x1t
        0x3t
        0x4t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_50
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x2t
        0x4t
        0x2t
    .end array-data

    nop

    :array_51
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x1t
        0x4t
        0x2t
    .end array-data

    nop

    :array_52
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x2t
        0x4t
        0x1t
    .end array-data

    nop

    :array_53
    .array-data 1
        0x1t
        0x1t
        0x4t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_54
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_55
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_56
    .array-data 1
        0x4t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_57
    .array-data 1
        0x4t
        0x2t
        0x1t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_58
    .array-data 1
        0x4t
        0x2t
        0x1t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_59
    .array-data 1
        0x2t
        0x1t
        0x2t
        0x1t
        0x4t
        0x1t
    .end array-data

    nop

    :array_5a
    .array-data 1
        0x2t
        0x1t
        0x4t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_5b
    .array-data 1
        0x4t
        0x1t
        0x2t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_5c
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x3t
    .end array-data

    nop

    :array_5d
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x3t
        0x4t
        0x1t
    .end array-data

    nop

    :array_5e
    .array-data 1
        0x1t
        0x3t
        0x1t
        0x1t
        0x4t
        0x1t
    .end array-data

    nop

    :array_5f
    .array-data 1
        0x1t
        0x1t
        0x4t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_60
    .array-data 1
        0x1t
        0x1t
        0x4t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_61
    .array-data 1
        0x4t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_62
    .array-data 1
        0x4t
        0x1t
        0x1t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_63
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
    .end array-data

    nop

    :array_64
    .array-data 1
        0x1t
        0x1t
        0x4t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_65
    .array-data 1
        0x3t
        0x1t
        0x1t
        0x1t
        0x4t
        0x1t
    .end array-data

    nop

    :array_66
    .array-data 1
        0x4t
        0x1t
        0x1t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_67
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x4t
        0x1t
        0x2t
    .end array-data

    nop

    :array_68
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x4t
    .end array-data

    nop

    :array_69
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x2t
        0x3t
        0x2t
    .end array-data

    nop

    :array_6a
    .array-data 1
        0x2t
        0x3t
        0x3t
        0x1t
        0x1t
        0x1t
        0x2t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 232
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/Barcode128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 242
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 266
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    iput-object v0, p0, Lcom/itextpdf/barcodes/Barcode128;->codeSet:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 243
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/itextpdf/barcodes/Barcode128;->x:F

    .line 244
    iput-object p2, p0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 245
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    .line 246
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    iput v0, p0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    .line 247
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/barcodes/Barcode128;->barHeight:F

    .line 248
    const/4 v0, 0x3

    iput v0, p0, Lcom/itextpdf/barcodes/Barcode128;->textAlignment:I

    .line 249
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    .line 250
    return-void
.end method

.method public static getBarsCode128Raw(Ljava/lang/String;)[B
    .locals 9
    .param p0, "text"    # Ljava/lang/String;

    .line 481
    const v0, 0xffff

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 482
    .local v0, "idx":I
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 483
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 484
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 485
    .local v2, "chk":I
    const/4 v3, 0x1

    .local v3, "k":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 486
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 487
    .end local v3    # "k":I
    :cond_1
    rem-int/lit8 v2, v2, 0x67

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 489
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x6

    mul-int/2addr v3, v4

    const/4 v5, 0x7

    add-int/2addr v3, v5

    new-array v3, v3, [B

    .line 491
    .local v3, "bars":[B
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 492
    sget-object v7, Lcom/itextpdf/barcodes/Barcode128;->BARS:[[B

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-object v7, v7, v8

    mul-int/lit8 v8, v6, 0x6

    invoke-static {v7, v1, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 493
    :cond_2
    sget-object v4, Lcom/itextpdf/barcodes/Barcode128;->BARS_STOP:[B

    mul-int/lit8 v7, v6, 0x6

    invoke-static {v4, v1, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    return-object v3
.end method

.method public static getHumanReadableUCCEAN(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "code"    # Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [C

    const/4 v4, 0x0

    const/16 v5, 0xca

    aput-char v5, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    .line 294
    .local v1, "fnc1":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 296
    goto :goto_0

    .line 298
    :cond_0
    const/4 v3, 0x0

    .line 299
    .local v3, "n":I
    const/4 v6, 0x0

    .line 300
    .local v6, "idlen":I
    const/4 v7, 0x2

    .local v7, "k":I
    :goto_1
    const/4 v8, 0x5

    if-ge v7, v8, :cond_4

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v7, :cond_1

    .line 302
    goto :goto_3

    .line 303
    :cond_1
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 304
    .local v8, "subcode":I
    sget-object v9, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_2

    :cond_2
    move v9, v4

    :goto_2
    move v3, v9

    .line 305
    if-eqz v3, :cond_3

    .line 306
    move v6, v7

    .line 307
    goto :goto_3

    .line 300
    .end local v8    # "subcode":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 310
    .end local v7    # "k":I
    :cond_4
    :goto_3
    if-nez v6, :cond_5

    .line 311
    goto :goto_4

    .line 312
    :cond_5
    const/16 v7, 0x28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 314
    if-lez v3, :cond_7

    .line 315
    sub-int/2addr v3, v6

    .line 316
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v3, :cond_6

    .line 317
    goto :goto_4

    .line 318
    :cond_6
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/barcodes/Barcode128;->removeFNC1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 321
    :cond_7
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 322
    .local v7, "idx":I
    if-gez v7, :cond_8

    .line 323
    nop

    .line 328
    .end local v3    # "n":I
    .end local v6    # "idlen":I
    .end local v7    # "idx":I
    :goto_4
    invoke-static {p0}, Lcom/itextpdf/barcodes/Barcode128;->removeFNC1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 324
    .restart local v3    # "n":I
    .restart local v6    # "idlen":I
    .restart local v7    # "idx":I
    :cond_8
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 327
    .end local v3    # "n":I
    .end local v6    # "idlen":I
    .end local v7    # "idx":I
    :goto_5
    goto/16 :goto_0
.end method

.method static getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textIndex"    # I
    .param p2, "numDigits"    # I

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 888
    .local v0, "out":Ljava/lang/StringBuilder;
    move v1, p1

    .line 889
    .local v1, "start":I
    :goto_0
    if-lez p2, :cond_1

    .line 890
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xca

    if-ne v2, v3, :cond_0

    .line 891
    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    add-int/lit8 p1, p1, 0x1

    .line 893
    goto :goto_0

    .line 895
    :cond_0
    add-int/lit8 p2, p2, -0x2

    .line 896
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "textIndex":I
    .local v2, "textIndex":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/lit8 p1, p1, -0x30

    .line 897
    .local p1, "c1":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "textIndex":I
    .local v3, "textIndex":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 898
    .local v2, "c2":I
    mul-int/lit8 v4, p1, 0xa

    add-int/2addr v4, v2

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 899
    .end local v2    # "c2":I
    .end local p1    # "c1":I
    move p1, v3

    goto :goto_0

    .line 900
    .end local v3    # "textIndex":I
    .local p1, "textIndex":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v3, p1, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getRawText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "ucc"    # Z

    .line 470
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-static {p0, p1, v0}, Lcom/itextpdf/barcodes/Barcode128;->getRawText(Ljava/lang/String;ZLcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRawText(Ljava/lang/String;ZLcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)Ljava/lang/String;
    .locals 16
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "ucc"    # Z
    .param p2, "codeSet"    # Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, ""

    .line 344
    .local v2, "out":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 345
    .local v3, "tLen":I
    const/16 v4, 0x66

    if-nez v3, :cond_1

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/itextpdf/barcodes/Barcode128;->getStartSymbol(Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    if-eqz p1, :cond_0

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    :cond_0
    return-object v2

    .line 352
    :cond_1
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    const-string v6, "There are illegal characters for barcode 128 in {0}."

    const/16 v7, 0xca

    if-ge v5, v3, :cond_4

    .line 353
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 354
    .local v8, "c":I
    const/16 v9, 0x7f

    if-le v8, v9, :cond_3

    if-ne v8, v7, :cond_2

    goto :goto_1

    .line 355
    :cond_2
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v4, v6}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 352
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 357
    .end local v5    # "k":I
    .end local v8    # "c":I
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 358
    .restart local v8    # "c":I
    invoke-static/range {p2 .. p2}, Lcom/itextpdf/barcodes/Barcode128;->getStartSymbol(Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)C

    move-result v9

    .line 359
    .local v9, "currentCode":C
    const/4 v10, 0x0

    .line 360
    .local v10, "index":I
    sget-object v11, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    const/4 v12, 0x2

    const/16 v13, 0x20

    const/4 v14, 0x1

    if-eq v1, v11, :cond_5

    sget-object v11, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->C:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    if-ne v1, v11, :cond_7

    :cond_5
    invoke-static {v0, v10, v12}, Lcom/itextpdf/barcodes/Barcode128;->isNextDigits(Ljava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 361
    const/16 v9, 0x69

    .line 362
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    if-eqz p1, :cond_6

    .line 364
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    :cond_6
    invoke-static {v0, v10, v12}, Lcom/itextpdf/barcodes/Barcode128;->getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    .line 366
    .local v11, "out2":Ljava/lang/String;
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/2addr v10, v15

    .line 367
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    .end local v11    # "out2":Ljava/lang/String;
    goto/16 :goto_3

    :cond_7
    if-ge v8, v13, :cond_9

    .line 369
    const/16 v9, 0x67

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    if-eqz p1, :cond_8

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v11, v8, 0x40

    int-to-char v11, v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    add-int/2addr v10, v14

    goto :goto_3

    .line 376
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    if-eqz p1, :cond_a

    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    :cond_a
    if-ne v8, v7, :cond_b

    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 382
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v11, v8, -0x20

    int-to-char v11, v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    :goto_2
    add-int/2addr v10, v14

    .line 385
    :goto_3
    sget-object v5, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    if-eq v1, v5, :cond_d

    invoke-static/range {p2 .. p2}, Lcom/itextpdf/barcodes/Barcode128;->getStartSymbol(Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)C

    move-result v5

    if-ne v9, v5, :cond_c

    goto :goto_4

    .line 386
    :cond_c
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v4, v6}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 387
    :cond_d
    :goto_4
    if-ge v10, v3, :cond_1a

    .line 388
    const/16 v5, 0x65

    const/16 v11, 0x64

    const/4 v15, 0x4

    packed-switch v9, :pswitch_data_0

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 433
    :pswitch_0
    invoke-static {v0, v10, v12}, Lcom/itextpdf/barcodes/Barcode128;->isNextDigits(Ljava/lang/String;II)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 434
    invoke-static {v0, v10, v12}, Lcom/itextpdf/barcodes/Barcode128;->getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 435
    .local v5, "out2":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/2addr v10, v15

    .line 436
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    .end local v5    # "out2":Ljava/lang/String;
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 438
    :cond_e
    add-int/lit8 v15, v10, 0x1

    .end local v10    # "index":I
    .local v15, "index":I
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 439
    if-ne v8, v7, :cond_f

    .line 440
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v10, v15

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 441
    :cond_f
    if-ge v8, v13, :cond_10

    .line 442
    const/16 v9, 0x67

    .line 443
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v10, v8, 0x40

    int-to-char v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v10, v15

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 446
    :cond_10
    const/16 v5, 0x68

    .line 447
    .end local v9    # "currentCode":C
    .local v5, "currentCode":C
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v8, -0x20

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v9, v5

    move v10, v15

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 412
    .end local v5    # "currentCode":C
    .end local v15    # "index":I
    .restart local v9    # "currentCode":C
    .restart local v10    # "index":I
    :pswitch_1
    sget-object v11, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    if-ne v1, v11, :cond_11

    invoke-static {v0, v10, v15}, Lcom/itextpdf/barcodes/Barcode128;->isNextDigits(Ljava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 413
    const/16 v5, 0x69

    .line 414
    .end local v9    # "currentCode":C
    .restart local v5    # "currentCode":C
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x63

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-static {v0, v10, v15}, Lcom/itextpdf/barcodes/Barcode128;->getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 416
    .local v9, "out2":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/2addr v10, v15

    .line 417
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    .end local v9    # "out2":Ljava/lang/String;
    move v9, v5

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 419
    .end local v5    # "currentCode":C
    .local v9, "currentCode":C
    :cond_11
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "index":I
    .local v11, "index":I
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 420
    if-ne v8, v7, :cond_12

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v10, v11

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 422
    :cond_12
    if-ge v8, v13, :cond_13

    .line 423
    const/16 v9, 0x67

    .line 424
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v10, v8, 0x40

    int-to-char v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v10, v11

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 427
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v10, v8, -0x20

    int-to-char v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    move v10, v11

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 390
    .end local v11    # "index":I
    .restart local v10    # "index":I
    :pswitch_2
    sget-object v5, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    if-ne v1, v5, :cond_14

    invoke-static {v0, v10, v15}, Lcom/itextpdf/barcodes/Barcode128;->isNextDigits(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 391
    const/16 v5, 0x69

    .line 392
    .end local v9    # "currentCode":C
    .restart local v5    # "currentCode":C
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x63

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-static {v0, v10, v15}, Lcom/itextpdf/barcodes/Barcode128;->getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 394
    .local v9, "out2":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/2addr v10, v11

    .line 395
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 396
    .end local v9    # "out2":Ljava/lang/String;
    move v9, v5

    goto/16 :goto_5

    .line 390
    .end local v5    # "currentCode":C
    .local v9, "currentCode":C
    :cond_14
    const/4 v15, 0x0

    .line 397
    add-int/lit8 v5, v10, 0x1

    .end local v10    # "index":I
    .local v5, "index":I
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 398
    if-ne v8, v7, :cond_15

    .line 399
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v10, v5

    goto :goto_5

    .line 400
    :cond_15
    const/16 v10, 0x5f

    if-le v8, v10, :cond_16

    .line 401
    const/16 v9, 0x68

    .line 402
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v8, -0x20

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v10, v5

    goto :goto_5

    .line 404
    :cond_16
    if-ge v8, v13, :cond_17

    .line 405
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v8, 0x40

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v10, v5

    goto :goto_5

    .line 407
    :cond_17
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v8, -0x20

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    move v10, v5

    .line 454
    .end local v5    # "index":I
    .restart local v10    # "index":I
    :goto_5
    sget-object v5, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    if-eq v1, v5, :cond_19

    invoke-static/range {p2 .. p2}, Lcom/itextpdf/barcodes/Barcode128;->getStartSymbol(Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)C

    move-result v5

    if-ne v9, v5, :cond_18

    goto :goto_6

    .line 455
    :cond_18
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v4, v6}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 387
    :cond_19
    :goto_6
    const/4 v12, 0x2

    goto/16 :goto_4

    .line 457
    :cond_1a
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getStartSymbol(Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)C
    .locals 2
    .param p0, "codeSet"    # Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 770
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128$1;->$SwitchMap$com$itextpdf$barcodes$Barcode128$Barcode128CodeSet:[I

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x68

    packed-switch v0, :pswitch_data_0

    .line 778
    return v1

    .line 776
    :pswitch_0
    const/16 v0, 0x69

    return v0

    .line 774
    :pswitch_1
    return v1

    .line 772
    :pswitch_2
    const/16 v0, 0x67

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static isNextDigits(Ljava/lang/String;II)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textIndex"    # I
    .param p2, "numDigits"    # I

    .line 856
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 857
    .local v0, "len":I
    :goto_0
    const/4 v1, 0x0

    if-ge p1, v0, :cond_5

    if-lez p2, :cond_5

    .line 858
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xca

    if-ne v2, v3, :cond_0

    .line 859
    add-int/lit8 p1, p1, 0x1

    .line 860
    goto :goto_0

    .line 862
    :cond_0
    const/4 v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 863
    .local v2, "n":I
    add-int v3, p1, v2

    if-le v3, v0, :cond_1

    .line 864
    return v1

    .line 866
    :cond_1
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "n":I
    .local v3, "n":I
    if-lez v2, :cond_4

    .line 867
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "textIndex":I
    .local v2, "textIndex":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 868
    .local p1, "c":C
    const/16 v4, 0x30

    if-lt p1, v4, :cond_3

    const/16 v4, 0x39

    if-le p1, v4, :cond_2

    goto :goto_2

    .line 871
    :cond_2
    nop

    .end local p1    # "c":C
    add-int/lit8 p2, p2, -0x1

    .line 872
    move p1, v2

    move v2, v3

    goto :goto_1

    .line 869
    .restart local p1    # "c":C
    :cond_3
    :goto_2
    return v1

    .line 873
    .end local v2    # "textIndex":I
    .end local v3    # "n":I
    .local p1, "textIndex":I
    :cond_4
    goto :goto_0

    .line 874
    :cond_5
    if-nez p2, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public static removeFNC1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 275
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 277
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 278
    .local v3, "c":C
    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_0

    .line 279
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v2    # "k":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 19
    .param p1, "foreground"    # Ljava/awt/Color;
    .param p2, "background"    # Ljava/awt/Color;

    .line 730
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    .line 731
    .local v1, "f":I
    :goto_0
    if-nez p2, :cond_1

    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode128;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 732
    .local v2, "g":I
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 734
    .local v3, "canvas":Ljava/awt/Canvas;
    iget v4, v0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v4, v5, :cond_3

    .line 735
    iget-object v4, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    const v5, 0xffff

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 736
    .local v4, "idx":I
    if-ltz v4, :cond_2

    .line 737
    iget-object v5, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, "bCode":Ljava/lang/String;
    goto :goto_2

    .line 739
    .end local v5    # "bCode":Ljava/lang/String;
    :cond_2
    iget-object v5, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    .line 741
    .end local v4    # "idx":I
    .restart local v5    # "bCode":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 742
    .end local v5    # "bCode":Ljava/lang/String;
    :cond_3
    iget-object v4, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    iget v5, v0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    if-ne v5, v6, :cond_4

    move v5, v8

    goto :goto_3

    :cond_4
    move v5, v7

    :goto_3
    invoke-static {v4, v5}, Lcom/itextpdf/barcodes/Barcode128;->getRawText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 744
    .restart local v5    # "bCode":Ljava/lang/String;
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 745
    .local v4, "len":I
    add-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0xb

    add-int/2addr v9, v6

    .line 746
    .local v9, "fullWidth":I
    invoke-static {v5}, Lcom/itextpdf/barcodes/Barcode128;->getBarsCode128Raw(Ljava/lang/String;)[B

    move-result-object v6

    .line 748
    .local v6, "bars":[B
    const/4 v10, 0x1

    .line 749
    .local v10, "print":Z
    const/4 v11, 0x0

    .line 750
    .local v11, "ptr":I
    iget v12, v0, Lcom/itextpdf/barcodes/Barcode128;->barHeight:F

    float-to-int v15, v12

    .line 751
    .local v15, "height":I
    mul-int v12, v9, v15

    new-array v14, v12, [I

    .line 752
    .local v14, "pix":[I
    const/4 v12, 0x0

    move/from16 v16, v10

    move/from16 v17, v11

    .end local v10    # "print":Z
    .end local v11    # "ptr":I
    .local v12, "k":I
    .local v16, "print":Z
    .local v17, "ptr":I
    :goto_5
    array-length v10, v6

    if-ge v12, v10, :cond_8

    .line 753
    aget-byte v10, v6, v12

    .line 754
    .local v10, "w":I
    move v11, v2

    .line 755
    .local v11, "c":I
    if-eqz v16, :cond_5

    .line 756
    move v11, v1

    .line 758
    :cond_5
    if-nez v16, :cond_6

    move v13, v8

    goto :goto_6

    :cond_6
    move v13, v7

    :goto_6
    move/from16 v16, v13

    .line 759
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_7
    if-ge v13, v10, :cond_7

    .line 760
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "ptr":I
    .local v18, "ptr":I
    aput v11, v14, v17

    .line 759
    add-int/lit8 v13, v13, 0x1

    move/from16 v17, v18

    goto :goto_7

    .line 752
    .end local v10    # "w":I
    .end local v11    # "c":I
    .end local v13    # "j":I
    .end local v18    # "ptr":I
    .restart local v17    # "ptr":I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 763
    .end local v12    # "k":I
    :cond_8
    move v8, v9

    .local v8, "k":I
    :goto_8
    array-length v10, v14

    if-ge v8, v10, :cond_9

    .line 764
    invoke-static {v14, v7, v14, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 763
    add-int/2addr v8, v9

    goto :goto_8

    .line 766
    .end local v8    # "k":I
    :cond_9
    new-instance v7, Ljava/awt/image/MemoryImageSource;

    const/4 v8, 0x0

    move-object v10, v7

    move v11, v9

    move v12, v15

    move-object v13, v14

    move-object/from16 v18, v14

    .end local v14    # "pix":[I
    .local v18, "pix":[I
    move v14, v8

    move v8, v15

    .end local v15    # "height":I
    .local v8, "height":I
    move v15, v9

    invoke-direct/range {v10 .. v15}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v7}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v7

    return-object v7
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 9

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "fontX":F
    const/4 v1, 0x0

    .line 508
    .local v1, "fontY":F
    iget-object v2, p0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const v3, 0xffff

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_5

    .line 509
    iget v2, p0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    .line 510
    iget v2, p0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/Barcode128;->getDescender()F

    move-result v6

    sub-float/2addr v2, v6

    move v1, v2

    .end local v1    # "fontY":F
    .local v2, "fontY":F
    goto :goto_0

    .line 512
    .end local v2    # "fontY":F
    .restart local v1    # "fontY":F
    :cond_0
    iget v2, p0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    neg-float v2, v2

    iget v6, p0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    add-float/2addr v2, v6

    move v1, v2

    .line 514
    :goto_0
    iget v2, p0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    if-ne v2, v4, :cond_2

    .line 515
    iget-object v2, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 516
    .local v2, "idx":I
    if-gez v2, :cond_1

    .line 517
    const-string v6, ""

    .local v6, "fullCode":Ljava/lang/String;
    goto :goto_1

    .line 519
    .end local v6    # "fullCode":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 521
    .end local v2    # "idx":I
    .restart local v6    # "fullCode":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .end local v6    # "fullCode":Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    if-ne v2, v5, :cond_3

    .line 522
    iget-object v2, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/barcodes/Barcode128;->getHumanReadableUCCEAN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "fullCode":Ljava/lang/String;
    goto :goto_2

    .line 524
    .end local v6    # "fullCode":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/barcodes/Barcode128;->removeFNC1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 526
    .restart local v6    # "fullCode":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v7, p0, Lcom/itextpdf/barcodes/Barcode128;->altText:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/itextpdf/barcodes/Barcode128;->altText:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v7, v6

    :goto_3
    iget v8, p0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v0

    .line 528
    .end local v6    # "fullCode":Ljava/lang/String;
    :cond_5
    iget v2, p0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    const/4 v6, 0x0

    if-ne v2, v4, :cond_7

    .line 529
    iget-object v2, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 530
    .restart local v2    # "idx":I
    if-ltz v2, :cond_6

    .line 531
    iget-object v3, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "fullCode":Ljava/lang/String;
    goto :goto_4

    .line 533
    .end local v3    # "fullCode":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    .line 534
    .end local v2    # "idx":I
    .restart local v3    # "fullCode":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 535
    .end local v3    # "fullCode":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    iget v3, p0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    if-ne v3, v5, :cond_8

    const/4 v6, 0x1

    :cond_8
    iget-object v3, p0, Lcom/itextpdf/barcodes/Barcode128;->codeSet:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-static {v2, v6, v3}, Lcom/itextpdf/barcodes/Barcode128;->getRawText(Ljava/lang/String;ZLcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)Ljava/lang/String;

    move-result-object v3

    .line 537
    .restart local v3    # "fullCode":Ljava/lang/String;
    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 538
    .local v2, "len":I
    add-int/lit8 v4, v2, 0x2

    mul-int/lit8 v4, v4, 0xb

    int-to-float v4, v4

    iget v5, p0, Lcom/itextpdf/barcodes/Barcode128;->x:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    iget v6, p0, Lcom/itextpdf/barcodes/Barcode128;->x:F

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 539
    .local v4, "fullWidth":F
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 540
    iget v5, p0, Lcom/itextpdf/barcodes/Barcode128;->barHeight:F

    add-float/2addr v5, v1

    .line 542
    .local v5, "fullHeight":F
    new-instance v6, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v6, v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v6
.end method

.method public getCodeSet()Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/itextpdf/barcodes/Barcode128;->codeSet:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    return-object v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 27
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "barColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "textColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 587
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    iget v1, v0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    const v2, 0xffff

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v1, v3, :cond_1

    .line 588
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 589
    .local v1, "idx":I
    if-gez v1, :cond_0

    .line 590
    const-string v5, ""

    .local v5, "fullCode":Ljava/lang/String;
    goto :goto_0

    .line 592
    .end local v5    # "fullCode":Ljava/lang/String;
    :cond_0
    iget-object v5, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 594
    .end local v1    # "idx":I
    .restart local v5    # "fullCode":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .end local v5    # "fullCode":Ljava/lang/String;
    :cond_1
    iget v1, v0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    if-ne v1, v4, :cond_2

    .line 595
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/Barcode128;->getHumanReadableUCCEAN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "fullCode":Ljava/lang/String;
    goto :goto_1

    .line 597
    .end local v5    # "fullCode":Ljava/lang/String;
    :cond_2
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/Barcode128;->removeFNC1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 599
    .restart local v5    # "fullCode":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .line 600
    .local v1, "fontX":F
    iget-object v6, v0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v6, :cond_4

    .line 601
    iget-object v6, v0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v7, v0, Lcom/itextpdf/barcodes/Barcode128;->altText:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/itextpdf/barcodes/Barcode128;->altText:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v7, v5

    :goto_2
    move-object v5, v7

    iget v8, v0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v1

    move v12, v1

    move-object v13, v5

    goto :goto_3

    .line 600
    :cond_4
    move v12, v1

    move-object v13, v5

    .line 604
    .end local v1    # "fontX":F
    .end local v5    # "fullCode":Ljava/lang/String;
    .local v12, "fontX":F
    .local v13, "fullCode":Ljava/lang/String;
    :goto_3
    iget v1, v0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    const/4 v14, 0x0

    if-ne v1, v3, :cond_6

    .line 605
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 606
    .local v1, "idx":I
    if-ltz v1, :cond_5

    .line 607
    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v2, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "bCode":Ljava/lang/String;
    goto :goto_4

    .line 609
    .end local v2    # "bCode":Ljava/lang/String;
    :cond_5
    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    .line 610
    .end local v1    # "idx":I
    .restart local v2    # "bCode":Ljava/lang/String;
    :goto_4
    move-object/from16 v16, v2

    goto :goto_6

    .line 611
    .end local v2    # "bCode":Ljava/lang/String;
    :cond_6
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    iget v2, v0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    if-ne v2, v4, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    move v2, v14

    :goto_5
    iget-object v3, v0, Lcom/itextpdf/barcodes/Barcode128;->codeSet:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-static {v1, v2, v3}, Lcom/itextpdf/barcodes/Barcode128;->getRawText(Ljava/lang/String;ZLcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    .line 613
    .local v16, "bCode":Ljava/lang/String;
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    .line 614
    .local v17, "len":I
    add-int/lit8 v1, v17, 0x2

    mul-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    iget v2, v0, Lcom/itextpdf/barcodes/Barcode128;->x:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/itextpdf/barcodes/Barcode128;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float v18, v1, v2

    .line 615
    .local v18, "fullWidth":F
    const/4 v1, 0x0

    .line 616
    .local v1, "barStartX":F
    const/4 v2, 0x0

    .line 617
    .local v2, "textStartX":F
    iget v4, v0, Lcom/itextpdf/barcodes/Barcode128;->textAlignment:I

    packed-switch v4, :pswitch_data_0

    .line 628
    cmpl-float v4, v12, v18

    if-lez v4, :cond_9

    .line 629
    sub-float v4, v12, v18

    div-float v1, v4, v3

    move v8, v2

    goto :goto_7

    .line 621
    :pswitch_0
    cmpl-float v3, v12, v18

    if-lez v3, :cond_8

    .line 622
    sub-float v1, v12, v18

    move v8, v2

    goto :goto_7

    .line 624
    :cond_8
    sub-float v2, v18, v12

    .line 626
    move v8, v2

    goto :goto_7

    .line 619
    :pswitch_1
    move v8, v2

    goto :goto_7

    .line 631
    :cond_9
    sub-float v4, v18, v12

    div-float v2, v4, v3

    move v8, v2

    .line 635
    .end local v2    # "textStartX":F
    .local v8, "textStartX":F
    :goto_7
    const/4 v2, 0x0

    .line 636
    .local v2, "barStartY":F
    const/4 v3, 0x0

    .line 637
    .local v3, "textStartY":F
    iget-object v4, v0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v4, :cond_b

    .line 638
    iget v4, v0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_a

    .line 639
    iget v4, v0, Lcom/itextpdf/barcodes/Barcode128;->barHeight:F

    iget v5, v0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    sub-float v3, v4, v5

    move v9, v2

    move v6, v3

    goto :goto_8

    .line 641
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/Barcode128;->getDescender()F

    move-result v4

    neg-float v3, v4

    .line 642
    iget v4, v0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    add-float v2, v3, v4

    move v9, v2

    move v6, v3

    goto :goto_8

    .line 637
    :cond_b
    move v9, v2

    move v6, v3

    .line 645
    .end local v2    # "barStartY":F
    .end local v3    # "textStartY":F
    .local v6, "textStartY":F
    .local v9, "barStartY":F
    :goto_8
    invoke-static/range {v16 .. v16}, Lcom/itextpdf/barcodes/Barcode128;->getBarsCode128Raw(Ljava/lang/String;)[B

    move-result-object v7

    .line 646
    .local v7, "bars":[B
    const/4 v2, 0x1

    .line 647
    .local v2, "print":Z
    if-eqz p2, :cond_c

    .line 648
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 650
    :cond_c
    const/4 v3, 0x0

    move v4, v1

    move/from16 v19, v2

    move v5, v3

    .end local v1    # "barStartX":F
    .end local v2    # "print":Z
    .local v4, "barStartX":F
    .local v5, "k":I
    .local v19, "print":Z
    :goto_9
    array-length v1, v7

    if-ge v5, v1, :cond_f

    .line 651
    aget-byte v1, v7, v5

    int-to-float v1, v1

    iget v2, v0, Lcom/itextpdf/barcodes/Barcode128;->x:F

    mul-float v20, v1, v2

    .line 652
    .local v20, "w":F
    if-eqz v19, :cond_d

    .line 653
    float-to-double v2, v4

    float-to-double v14, v9

    iget v1, v0, Lcom/itextpdf/barcodes/Barcode128;->inkSpreading:F

    sub-float v1, v20, v1

    move/from16 v21, v6

    move-object/from16 v22, v7

    .end local v6    # "textStartY":F
    .end local v7    # "bars":[B
    .local v21, "textStartY":F
    .local v22, "bars":[B
    float-to-double v6, v1

    iget v1, v0, Lcom/itextpdf/barcodes/Barcode128;->barHeight:F

    move/from16 v23, v8

    move/from16 v24, v9

    .end local v8    # "textStartX":F
    .end local v9    # "barStartY":F
    .local v23, "textStartX":F
    .local v24, "barStartY":F
    float-to-double v8, v1

    move-object/from16 v1, p1

    move/from16 v26, v4

    move/from16 v25, v5

    .end local v4    # "barStartX":F
    .end local v5    # "k":I
    .local v25, "k":I
    .local v26, "barStartX":F
    move-wide v4, v14

    move/from16 v15, v21

    move-object/from16 v14, v22

    .end local v21    # "textStartY":F
    .end local v22    # "bars":[B
    .local v14, "bars":[B
    .local v15, "textStartY":F
    move/from16 v21, v12

    move/from16 v12, v23

    move/from16 v22, v24

    .end local v23    # "textStartX":F
    .end local v24    # "barStartY":F
    .local v12, "textStartX":F
    .local v21, "fontX":F
    .local v22, "barStartY":F
    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_a

    .line 652
    .end local v14    # "bars":[B
    .end local v15    # "textStartY":F
    .end local v21    # "fontX":F
    .end local v22    # "barStartY":F
    .end local v25    # "k":I
    .end local v26    # "barStartX":F
    .restart local v4    # "barStartX":F
    .restart local v5    # "k":I
    .restart local v6    # "textStartY":F
    .restart local v7    # "bars":[B
    .restart local v8    # "textStartX":F
    .restart local v9    # "barStartY":F
    .local v12, "fontX":F
    :cond_d
    move/from16 v26, v4

    move/from16 v25, v5

    move v15, v6

    move-object v14, v7

    move/from16 v22, v9

    move/from16 v21, v12

    move v12, v8

    .line 655
    .end local v4    # "barStartX":F
    .end local v5    # "k":I
    .end local v6    # "textStartY":F
    .end local v7    # "bars":[B
    .end local v8    # "textStartX":F
    .end local v9    # "barStartY":F
    .local v12, "textStartX":F
    .restart local v14    # "bars":[B
    .restart local v15    # "textStartY":F
    .restart local v21    # "fontX":F
    .restart local v22    # "barStartY":F
    .restart local v25    # "k":I
    .restart local v26    # "barStartX":F
    :goto_a
    if-nez v19, :cond_e

    const/4 v1, 0x1

    goto :goto_b

    :cond_e
    const/4 v1, 0x0

    :goto_b
    move/from16 v19, v1

    .line 656
    add-float v4, v26, v20

    .line 650
    .end local v20    # "w":F
    .end local v26    # "barStartX":F
    .restart local v4    # "barStartX":F
    add-int/lit8 v5, v25, 0x1

    move v8, v12

    move-object v7, v14

    move v6, v15

    move/from16 v12, v21

    move/from16 v9, v22

    const/4 v14, 0x0

    .end local v25    # "k":I
    .restart local v5    # "k":I
    goto :goto_9

    .end local v14    # "bars":[B
    .end local v15    # "textStartY":F
    .end local v21    # "fontX":F
    .end local v22    # "barStartY":F
    .restart local v6    # "textStartY":F
    .restart local v7    # "bars":[B
    .restart local v8    # "textStartX":F
    .restart local v9    # "barStartY":F
    .local v12, "fontX":F
    :cond_f
    move/from16 v26, v4

    move/from16 v25, v5

    move v15, v6

    move-object v14, v7

    move/from16 v22, v9

    move/from16 v21, v12

    move v12, v8

    .line 658
    .end local v4    # "barStartX":F
    .end local v5    # "k":I
    .end local v6    # "textStartY":F
    .end local v7    # "bars":[B
    .end local v8    # "textStartX":F
    .end local v9    # "barStartY":F
    .local v12, "textStartX":F
    .restart local v14    # "bars":[B
    .restart local v15    # "textStartY":F
    .restart local v21    # "fontX":F
    .restart local v22    # "barStartY":F
    .restart local v26    # "barStartX":F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 659
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_11

    .line 660
    if-eqz v11, :cond_10

    .line 661
    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 663
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 664
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v2, v0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 665
    invoke-virtual {v10, v12, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 666
    invoke-virtual {v10, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 667
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 669
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/Barcode128;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 11
    .param p1, "code"    # Ljava/lang/String;

    .line 682
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/Barcode128;->getCodeType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "idx":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    .local v2, "ret":Ljava/lang/StringBuilder;
    :goto_0
    if-ltz v0, :cond_8

    .line 686
    const/16 v3, 0x29

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 687
    .local v3, "end":I
    if-ltz v3, :cond_7

    .line 690
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, "sai":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v1, :cond_6

    .line 694
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 695
    .local v5, "ai":I
    sget-object v6, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 696
    .local v6, "len":I
    if-eqz v6, :cond_5

    .line 699
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 700
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 701
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 703
    :cond_0
    const/16 v7, 0x28

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 704
    if-gez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v0

    .line 705
    .local v7, "next":I
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    if-gez v6, :cond_2

    .line 707
    if-ltz v0, :cond_3

    .line 708
    const/16 v8, 0xca

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 710
    :cond_2
    sub-int v9, v7, v3

    sub-int/2addr v9, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v9, v8

    if-ne v9, v6, :cond_4

    .line 713
    .end local v3    # "end":I
    .end local v4    # "sai":Ljava/lang/String;
    .end local v5    # "ai":I
    .end local v6    # "len":I
    .end local v7    # "next":I
    :cond_3
    :goto_2
    goto :goto_0

    .line 711
    .restart local v3    # "end":I
    .restart local v4    # "sai":Ljava/lang/String;
    .restart local v5    # "ai":I
    .restart local v6    # "len":I
    .restart local v7    # "next":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid AI length"

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 697
    .end local v7    # "next":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v7, "AI not found"

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 692
    .end local v5    # "ai":I
    .end local v6    # "len":I
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "AI is too short"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    .end local v4    # "sai":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Badly formed ucc string"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 714
    .end local v3    # "end":I
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/itextpdf/barcodes/Barcode1D;->setCode(Ljava/lang/String;)V

    .line 715
    .end local v0    # "idx":I
    .end local v2    # "ret":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 716
    :cond_9
    invoke-super {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;->setCode(Ljava/lang/String;)V

    .line 718
    :goto_3
    return-void
.end method

.method public setCodeSet(Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)V
    .locals 0
    .param p1, "codeSet"    # Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 259
    iput-object p1, p0, Lcom/itextpdf/barcodes/Barcode128;->codeSet:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 260
    return-void
.end method
