.class Landroid/os/CommonTimeUtils;
.super Ljava/lang/Object;
.source "CommonTimeUtils.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final SUCCESS:I


# instance fields
.field private mInterfaceDesc:Ljava/lang/String;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .parameter "remote"
    .parameter "interfaceDesc"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public transactGetInt(II)I
    .registers 9
    .parameter "method_code"
    .parameter "error_ret_val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, reply:Landroid/os/Parcel;
    :try_start_8
    iget-object v4, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, res:I
    if-nez v2, :cond_24

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_26

    move-result v3

    .local v3, ret_val:I
    :goto_1d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    .end local v3           #ret_val:I
    :cond_24
    move v3, p2

    goto :goto_1d

    .end local v2           #res:I
    :catchall_26
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public transactGetLong(IJ)J
    .registers 11
    .parameter "method_code"
    .parameter "error_ret_val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, reply:Landroid/os/Parcel;
    :try_start_8
    iget-object v5, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, res:I
    if-nez v2, :cond_24

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_26

    move-result-wide v3

    .local v3, ret_val:J
    :goto_1d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v3

    .end local v3           #ret_val:J
    :cond_24
    move-wide v3, p2

    goto :goto_1d

    .end local v2           #res:I
    :catchall_26
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public transactGetSockaddr(I)Ljava/net/InetSocketAddress;
    .registers 24
    .parameter "method_code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .local v9, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .local v12, reply:Landroid/os/Parcel;
    const/4 v14, 0x0

    .local v14, ret_val:Ljava/net/InetSocketAddress;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-interface {v0, v1, v9, v12, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, res:I
    if-nez v13, :cond_92

    const/4 v11, 0x0

    .local v11, port:I
    const/4 v8, 0x0

    .local v8, addrStr:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, type:I
    sget v17, Llibcore/io/OsConstants;->AF_INET:I

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_99

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, addr:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v11

    const-string v17, "%d.%d.%d.%d"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    shr-int/lit8 v20, v3, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    shr-int/lit8 v20, v3, 0x10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    shr-int/lit8 v20, v3, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    and-int/lit16 v0, v3, 0xff

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .end local v3           #addr:I
    :cond_8b
    :goto_8b
    if-eqz v8, :cond_92

    new-instance v14, Ljava/net/InetSocketAddress;

    .end local v14           #ret_val:Ljava/net/InetSocketAddress;
    invoke-direct {v14, v8, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_92
    .catchall {:try_start_9 .. :try_end_92} :catchall_13d

    .end local v8           #addrStr:Ljava/lang/String;
    .end local v11           #port:I
    .end local v16           #type:I
    .restart local v14       #ret_val:Ljava/net/InetSocketAddress;
    :cond_92
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-object v14

    .restart local v8       #addrStr:Ljava/lang/String;
    .restart local v11       #port:I
    .restart local v16       #type:I
    :cond_99
    :try_start_99
    sget v17, Llibcore/io/OsConstants;->AF_INET6:I

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_8b

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, addr1:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, addr2:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, addr3:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, addr4:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, flowinfo:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .local v15, scope_id:I
    const-string v17, "[%04X:%04X:%04X:%04X:%04X:%04X:%04X:%04X]"

    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    shr-int/lit8 v20, v4, 0x10

    const v21, 0xffff

    and-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const v20, 0xffff

    and-int v20, v20, v4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    shr-int/lit8 v20, v5, 0x10

    const v21, 0xffff

    and-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const v20, 0xffff

    and-int v20, v20, v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    shr-int/lit8 v20, v6, 0x10

    const v21, 0xffff

    and-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x5

    const v20, 0xffff

    and-int v20, v20, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x6

    shr-int/lit8 v20, v7, 0x10

    const v21, 0xffff

    and-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x7

    const v20, 0xffff

    and-int v20, v20, v7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_13a
    .catchall {:try_start_99 .. :try_end_13a} :catchall_13d

    move-result-object v8

    goto/16 :goto_8b

    .end local v4           #addr1:I
    .end local v5           #addr2:I
    .end local v6           #addr3:I
    .end local v7           #addr4:I
    .end local v8           #addrStr:Ljava/lang/String;
    .end local v10           #flowinfo:I
    .end local v11           #port:I
    .end local v13           #res:I
    .end local v14           #ret_val:Ljava/net/InetSocketAddress;
    .end local v15           #scope_id:I
    .end local v16           #type:I
    :catchall_13d
    move-exception v17

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v17
.end method

.method public transactGetString(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "method_code"
    .parameter "error_ret_val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, reply:Landroid/os/Parcel;
    :try_start_8
    iget-object v4, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, res:I
    if-nez v2, :cond_24

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_26

    move-result-object v3

    .local v3, ret_val:Ljava/lang/String;
    :goto_1d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    .end local v3           #ret_val:Ljava/lang/String;
    :cond_24
    move-object v3, p2

    goto :goto_1d

    .end local v2           #res:I
    :catchall_26
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public transactSetInt(II)I
    .registers 8
    .parameter "method_code"
    .parameter "val"

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, reply:Landroid/os/Parcel;
    :try_start_8
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_2a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_21

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_20
    return v3

    :catch_21
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, -0x7

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_20

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_2a
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public transactSetLong(IJ)I
    .registers 9
    .parameter "method_code"
    .parameter "val"

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, reply:Landroid/os/Parcel;
    :try_start_8
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_2a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_21

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_20
    return v3

    :catch_21
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, -0x7

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_20

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_2a
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public transactSetSockaddr(ILjava/net/InetSocketAddress;)I
    .registers 17
    .parameter "method_code"
    .parameter "addr"

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .local v4, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .local v8, reply:Landroid/os/Parcel;
    const/4 v9, -0x1

    .local v9, ret_val:I
    :try_start_9
    iget-object v12, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_26

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    iget-object v12, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v13, 0x0

    invoke-interface {v12, p1, v4, v8, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_be
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1d} :catch_64

    move-result v9

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :goto_24
    move v12, v9

    :goto_25
    return v12

    :cond_26
    const/4 v12, 0x1

    :try_start_27
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .local v1, a:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .local v3, b:[B
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .local v7, p:I
    instance-of v12, v1, Ljava/net/Inet4Address;

    if-eqz v12, :cond_6d

    const/4 v12, 0x0

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    const/4 v13, 0x1

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    const/4 v13, 0x2

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    const/4 v13, 0x3

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    or-int v10, v12, v13

    .local v10, v4addr:I
    sget v12, Llibcore/io/OsConstants;->AF_INET:I

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_63
    .catchall {:try_start_27 .. :try_end_63} :catchall_be
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_63} :catch_64

    goto :goto_14

    .end local v1           #a:Ljava/net/InetAddress;
    .end local v3           #b:[B
    .end local v7           #p:I
    .end local v10           #v4addr:I
    :catch_64
    move-exception v5

    .local v5, e:Landroid/os/RemoteException;
    const/4 v9, -0x7

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_24

    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v1       #a:Ljava/net/InetAddress;
    .restart local v3       #b:[B
    .restart local v7       #p:I
    :cond_6d
    :try_start_6d
    instance-of v12, v1, Ljava/net/Inet6Address;

    if-eqz v12, :cond_c6

    move-object v0, v1

    check-cast v0, Ljava/net/Inet6Address;

    move-object v11, v0

    .local v11, v6:Ljava/net/Inet6Address;
    sget v12, Llibcore/io/OsConstants;->AF_INET6:I

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    .local v6, i:I
    :goto_7b
    const/4 v12, 0x4

    if-ge v6, v12, :cond_ae

    mul-int/lit8 v12, v6, 0x4

    add-int/lit8 v12, v12, 0x0

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    mul-int/lit8 v13, v6, 0x4

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    mul-int/lit8 v13, v6, 0x4

    add-int/lit8 v13, v13, 0x2

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    mul-int/lit8 v13, v6, 0x4

    add-int/lit8 v13, v13, 0x3

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    or-int v2, v12, v13

    .local v2, aword:I
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7b

    .end local v2           #aword:I
    :cond_ae
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v11}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_bc
    .catchall {:try_start_6d .. :try_end_bc} :catchall_be
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_bc} :catch_64

    goto/16 :goto_14

    .end local v1           #a:Ljava/net/InetAddress;
    .end local v3           #b:[B
    .end local v6           #i:I
    .end local v7           #p:I
    .end local v11           #v6:Ljava/net/Inet6Address;
    :catchall_be
    move-exception v12

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v12

    .restart local v1       #a:Ljava/net/InetAddress;
    .restart local v3       #b:[B
    .restart local v7       #p:I
    :cond_c6
    const/4 v12, -0x4

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_25
.end method

.method public transactSetString(ILjava/lang/String;)I
    .registers 8
    .parameter "method_code"
    .parameter "val"

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, reply:Landroid/os/Parcel;
    :try_start_8
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_2a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_21

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_20
    return v3

    :catch_21
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, -0x7

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_20

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_2a
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
